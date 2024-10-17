import time
def tfun(function):
    t = time.time()
    function()
    return time.time() - t
