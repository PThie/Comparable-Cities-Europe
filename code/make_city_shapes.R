make_city_shapes <- function(utmcrs) {
    #' @title Prepare city shapes
    #' 
    #' @description This function prepares the city shapes of the included
    #' cities.
    #' 
    #' @param utmcrs UTM projection
    #' 
    #' @author Patrick Thiel
    #' @return QS file of city shapes

    #----------------------------------------------
    # read and clean

    # empty list for storage
    city_shapes_list <- list()

    # get all file paths
    cities <- list.files(
        file.path(
            data_path,
            "cities"
        ),
        pattern = ".shp$",
        full.names = TRUE
    )

    # loop through file paths
    for (city in cities) {
        # extract city name
        base_length <- nchar(file.path(data_path, "cities"))
        city_name <- substr(city, start = base_length+2, stop = nchar(city)-4)

        # read data
        dta <- st_read(
            city,
            quiet = TRUE
        ) |>
        st_transform(utmcrs) |>
        mutate(
            city_name = city_name,
            name = NULL,
            name_en = NULL
        ) |>
        st_cast("MULTIPOLYGON")

        # store data
        city_shapes_list[[city_name]] <- dta
    }

    # combine all and set geometry
    all_cities <- data.table::rbindlist(city_shapes_list)
    all_cities <- st_set_geometry(all_cities, all_cities$geometry)

    #----------------------------------------------
    # export

    qs::qsave(
        all_cities,
        file.path(
            data_path,
            "cities/cities_combined.qs"
        )
    )

    #----------------------------------------------
    # return
    return(all_cities)
}