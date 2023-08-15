aggregate_city_gdp <- function(city_gdp) {
    #' @title Aggregating city GDP
    #' 
    #' @description This function aggregates the given grid-level city GDP to
    #' the city-level.
    #' 
    #' @param city_gdp Grid-level city GDP
    #' 
    #' @author Patrick Thiel
    #' @return File with city-level GDP
    
    #----------------------------------------------
    # aggregate GDP at city-level

    aggregated_gdp <- city_gdp |>
        st_drop_geometry() |>
        group_by(city_name) |>
        summarise(
            total_gdp = sum(total_gdp, na.rm = TRUE),
            total_pop = sum(pop_2018, na.rm = TRUE),
            total_gdp_per_capita = total_gdp / total_pop
        ) |>
        as.data.frame()

    #----------------------------------------------
    # export

    data.table::fwrite(
        aggregated_gdp,
        file.path(
            data_path,
            "gdp/gdp_cities.csv"
        )
    )

    #----------------------------------------------
    # return
    return(aggregated_gdp)
}