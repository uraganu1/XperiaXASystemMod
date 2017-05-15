.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 53
    const-string/jumbo v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 54
    .local v7, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v18, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 55
    const/high16 v19, -0x80000000

    .line 54
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 57
    .local v17, "type":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 58
    .local v4, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothAdapter;->isDeviceAllowedByPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v12, "pairingIntent":Landroid/content/Intent;
    const-class v18, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v18, "android.bluetooth.device.extra.PAIRING_VARIANT"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 67
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 69
    :cond_1
    :goto_0
    const-string/jumbo v18, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 70
    const/high16 v19, -0x80000000

    .line 69
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 71
    .local v13, "pairingKey":I
    const-string/jumbo v18, "android.bluetooth.device.extra.PAIRING_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .end local v13    # "pairingKey":I
    :cond_2
    const-string/jumbo v18, "android.bluetooth.device.action.PAIRING_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    const-string/jumbo v18, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 78
    .local v15, "powerManager":Landroid/os/PowerManager;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 79
    :goto_1
    invoke-virtual {v15}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 80
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    .line 79
    if-eqz v18, :cond_6

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    .end local v4    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v17    # "type":I
    :cond_3
    :goto_2
    return-void

    .line 68
    .restart local v4    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v12    # "pairingIntent":Landroid/content/Intent;
    .restart local v17    # "type":I
    :cond_4
    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 78
    .restart local v15    # "powerManager":Landroid/os/PowerManager;
    :cond_5
    const/4 v8, 0x0

    .local v8, "deviceAddress":Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 87
    .local v16, "res":Landroid/content/res/Resources;
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    const v19, 0x1080080

    .line 87
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 89
    const v19, 0x7f0b01b3

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 87
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 91
    .local v6, "builder":Landroid/app/Notification$Builder;
    const/16 v18, 0x0

    .line 92
    const/high16 v19, 0x40000000    # 2.0f

    .line 91
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 94
    .local v14, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v18, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 96
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v10

    .line 100
    :cond_7
    :goto_3
    const v18, 0x7f0b01b4

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 101
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const v20, 0x7f0b01b5

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 100
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 103
    const/16 v19, 0x1

    .line 100
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 104
    const/16 v19, 0x1

    .line 100
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 106
    const v19, 0x1060059

    .line 105
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v19

    .line 100
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 109
    const-string/jumbo v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 108
    check-cast v9, Landroid/app/NotificationManager;

    .line 110
    .local v9, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v18

    const v19, 0x1080080

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 97
    .end local v9    # "manager":Landroid/app/NotificationManager;
    :cond_8
    const v18, 0x104000e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 113
    .end local v4    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v6    # "builder":Landroid/app/Notification$Builder;
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "pairingIntent":Landroid/content/Intent;
    .end local v14    # "pending":Landroid/app/PendingIntent;
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "type":I
    :cond_9
    const-string/jumbo v18, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 117
    const-string/jumbo v18, "notification"

    .line 116
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 118
    .restart local v9    # "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 120
    .end local v9    # "manager":Landroid/app/NotificationManager;
    :cond_a
    const-string/jumbo v18, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 121
    const-string/jumbo v18, "android.bluetooth.device.extra.BOND_STATE"

    .line 122
    const/high16 v19, -0x80000000

    .line 121
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 123
    .local v5, "bondState":I
    const-string/jumbo v18, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 124
    const/high16 v19, -0x80000000

    .line 123
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 125
    .local v11, "oldState":I
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v11, v0, :cond_3

    .line 126
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    .line 129
    const-string/jumbo v18, "notification"

    .line 128
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 130
    .restart local v9    # "manager":Landroid/app/NotificationManager;
    const v18, 0x1080080

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2
.end method
