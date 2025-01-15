return {
    'LukeOlson42/simple-green',
    priority = 1000,
    config = function ()
        print('loaded scheme')
        require('simple-green').setup()
    end
}
