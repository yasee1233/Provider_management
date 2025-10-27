Changing the ui reflection with the help of provider. I make a small counter refletion with the provider . A provider has four important things ,Changenotifiers ,notifylisteners,ChangeNotifierprovider,consumer .All having 
a different role but work only under provider. This is a changeNotifier class that provides notification capabilities to its listeners when data changes.ChangeNotifierProvider widget injects your ChangeNotifier into the widget tree so other widgets can access it.
Consumer widget listens to changes in the provided model and rebuilds only the part of the UI that depends on it.NotifyListeners method is called inside your ChangeNotifier class to trigger UI updates.


