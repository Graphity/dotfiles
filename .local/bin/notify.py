#!/usr/bin/env python3

import gi
gi.require_version('Notify', '0.7')
from gi.repository import Notify


def send_notif(init, title, body):
    Notify.init(init)
    notif = Notify.Notification.new(title, body, 'dialog-information')
    notif.show()
