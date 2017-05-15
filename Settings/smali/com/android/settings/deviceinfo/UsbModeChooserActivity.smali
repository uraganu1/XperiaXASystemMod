.class public Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# static fields
.field public static final DEFAULT_MODES:[I


# instance fields
.field private mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFunctions:[Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    const/4 v1, 0x1

    .line 56
    const/4 v2, 0x2

    .line 58
    const/4 v3, 0x6

    .line 53
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addCustomizationUsbType([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 11
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    const-string/jumbo v4, "ro.sys.usb.storage.type"

    const-string/jumbo v5, "mtp"

    .line 193
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "umsConfig":Ljava/lang/String;
    const-string/jumbo v4, "mtp,mass_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 199
    .local v3, "umsSupport":Z
    const-string/jumbo v4, "ro.sys.usb.bicr"

    const-string/jumbo v5, "no"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "bicrConfig":Ljava/lang/String;
    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 202
    .local v1, "bicrSupport":Z
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 203
    new-array p1, v10, [Ljava/lang/CharSequence;

    .line 204
    .end local p1    # "items":[Ljava/lang/CharSequence;
    const v4, 0x7f0b0b6a

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v6

    .line 205
    const v4, 0x7f0b0b6b

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v7

    .line 208
    const v4, 0x7f0b0b6d

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v8

    .line 209
    const v4, 0x7f0b0135

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v9

    .line 210
    .restart local p1    # "items":[Ljava/lang/CharSequence;
    new-array v4, v10, [Ljava/lang/String;

    .line 211
    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 212
    const-string/jumbo v5, "mtp"

    aput-object v5, v4, v7

    .line 215
    const-string/jumbo v5, "midi"

    aput-object v5, v4, v8

    .line 216
    const-string/jumbo v5, "bicr"

    aput-object v5, v4, v9

    .line 210
    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    .line 246
    :cond_0
    :goto_0
    return-object p1

    .line 217
    :cond_1
    if-eqz v3, :cond_2

    .line 218
    new-array p1, v9, [Ljava/lang/CharSequence;

    .line 219
    .end local p1    # "items":[Ljava/lang/CharSequence;
    const v4, 0x7f0b0b6a

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v6

    .line 220
    const v4, 0x7f0b0b6b

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v7

    .line 223
    const v4, 0x7f0b0b6d

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v8

    .line 225
    .restart local p1    # "items":[Ljava/lang/CharSequence;
    new-array v4, v9, [Ljava/lang/String;

    .line 226
    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 227
    const-string/jumbo v5, "mtp"

    aput-object v5, v4, v7

    .line 230
    const-string/jumbo v5, "midi"

    aput-object v5, v4, v8

    .line 225
    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_2
    if-eqz v1, :cond_0

    .line 232
    new-array p1, v10, [Ljava/lang/CharSequence;

    .line 233
    .end local p1    # "items":[Ljava/lang/CharSequence;
    const v4, 0x7f0b0b6a

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v6

    .line 234
    const v4, 0x7f0b0b6b

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v7

    .line 236
    const v4, 0x7f0b0b6d

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v8

    .line 237
    const v4, 0x7f0b0135

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, p1, v9

    .line 238
    .restart local p1    # "items":[Ljava/lang/CharSequence;
    new-array v4, v10, [Ljava/lang/String;

    .line 239
    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 240
    const-string/jumbo v5, "mtp"

    aput-object v5, v4, v7

    .line 242
    const-string/jumbo v5, "midi"

    aput-object v5, v4, v8

    .line 243
    const-string/jumbo v5, "bicr"

    aput-object v5, v4, v9

    .line 238
    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static getSummary(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 250
    packed-switch p0, :pswitch_data_0

    .line 268
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 252
    :pswitch_1
    const v0, 0x7f0b0d4f

    return v0

    .line 254
    :pswitch_2
    const v0, 0x7f0b0d51

    return v0

    .line 256
    :pswitch_3
    const v0, 0x7f0b0d52

    return v0

    .line 258
    :pswitch_4
    const v0, 0x7f0b0d53

    return v0

    .line 260
    :pswitch_5
    const v0, 0x7f0b0d54

    return v0

    .line 263
    :pswitch_6
    const v0, 0x7f0b0138

    return v0

    .line 265
    :pswitch_7
    const v0, 0x7f0b0136

    return v0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 272
    packed-switch p0, :pswitch_data_0

    .line 290
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 274
    :pswitch_1
    const v0, 0x7f0b0b6a

    return v0

    .line 276
    :pswitch_2
    const v0, 0x7f0b0d50

    return v0

    .line 278
    :pswitch_3
    const v0, 0x7f0b0b6b

    return v0

    .line 280
    :pswitch_4
    const v0, 0x7f0b0b6c

    return v0

    .line 282
    :pswitch_5
    const v0, 0x7f0b0b6d

    return v0

    .line 285
    :pswitch_6
    const v0, 0x7f0b0137

    return v0

    .line 287
    :pswitch_7
    const v0, 0x7f0b0135

    return v0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "selected"    # Z
    .param p3, "container"    # Landroid/widget/LinearLayout;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    new-instance v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 177
    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 178
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method private shouldBeInflated(IZ)Z
    .locals 3
    .param p1, "usbMode"    # I
    .param p2, "isFileTransferRestricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 155
    if-eqz p2, :cond_0

    .line 156
    if-eqz p1, :cond_0

    .line 157
    if-eq p1, v1, :cond_0

    .line 158
    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    .line 155
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "filter":Landroid/content/IntentFilter;
    new-instance v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v7, "usb"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbManager;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 103
    const-string/jumbo v7, "device_policy"

    .line 102
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 104
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 105
    const-string/jumbo v10, "no_usb_file_transfer"

    .line 104
    invoke-virtual {v7, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 106
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v2, v12, v7}, Landroid/app/admin/DevicePolicyManager;->isUsbMassStorageDisabled(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 108
    :goto_0
    if-eqz v5, :cond_2

    .line 109
    new-array v6, v11, [Ljava/lang/CharSequence;

    const v7, 0x7f0b0b6a

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0b0b6d

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    .line 110
    .local v6, "items":[Ljava/lang/CharSequence;
    new-array v7, v11, [Ljava/lang/String;

    aput-object v12, v7, v9

    const-string/jumbo v10, "midi"

    aput-object v10, v7, v8

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    .line 121
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 123
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    const v10, 0x7f0b0b6e

    .line 123
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 125
    const v10, 0x7f040140

    .line 123
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 126
    new-instance v10, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v10, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    .line 123
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 132
    new-instance v10, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v10, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    const v11, 0x7f0b0226

    .line 123
    invoke-virtual {v7, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 138
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 140
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v10, 0x7f13026b

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v7, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-direct {v7, p0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    .line 143
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v7}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    .line 144
    .local v1, "current":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v7, v7

    if-ge v4, v7, :cond_4

    .line 145
    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v7, v7, v4

    invoke-direct {p0, v7, v5}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->shouldBeInflated(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v10, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v10, v10, v4

    invoke-virtual {v7, v10}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v10, v7, v4

    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v7, v7, v4

    if-ne v1, v7, :cond_3

    move v7, v8

    :goto_3
    invoke-direct {p0, v10, v7, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V

    .line 144
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "container":Landroid/widget/LinearLayout;
    .end local v1    # "current":I
    .end local v4    # "i":I
    .end local v6    # "items":[Ljava/lang/CharSequence;
    :cond_1
    const/4 v5, 0x1

    .local v5, "isFileTransferRestricted":Z
    goto/16 :goto_0

    .line 112
    .end local v5    # "isFileTransferRestricted":Z
    :cond_2
    new-array v6, v13, [Ljava/lang/CharSequence;

    .line 113
    const v7, 0x7f0b0b6a

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0b0b6b

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    .line 114
    const v7, 0x7f0b0b6d

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v11

    .line 115
    .restart local v6    # "items":[Ljava/lang/CharSequence;
    new-array v7, v13, [Ljava/lang/String;

    aput-object v12, v7, v9

    const-string/jumbo v10, "mtp"

    aput-object v10, v7, v8

    .line 116
    const-string/jumbo v10, "midi"

    aput-object v10, v7, v11

    .line 115
    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mFunctions:[Ljava/lang/String;

    .line 118
    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->addCustomizationUsbType([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_1

    .restart local v0    # "container":Landroid/widget/LinearLayout;
    .restart local v1    # "current":I
    .restart local v4    # "i":I
    :cond_3
    move v7, v9

    .line 147
    goto :goto_3

    .line 83
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    :cond_1
    return-void
.end method
