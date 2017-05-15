.class public Lcom/mediatek/settings/sim/RadioPowerPreference;
.super Landroid/preference/Preference;
.source "RadioPowerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/RadioPowerPreference$SetDefaultListener;,
        Lcom/mediatek/settings/sim/RadioPowerPreference$1;,
        Lcom/mediatek/settings/sim/RadioPowerPreference$2;,
        Lcom/mediatek/settings/sim/RadioPowerPreference$3;
    }
.end annotation


# static fields
.field private static sAlertDialog:Landroid/app/AlertDialog;

.field private static sProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/mediatek/settings/sim/RadioPowerController;

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mListener:Lcom/mediatek/settings/sim/RadioPowerPreference$SetDefaultListener;

.field private mPowerEnabled:Z

.field private mPowerState:Z

.field private mRadioSwith:Landroid/widget/Switch;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mSubId:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/settings/sim/RadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mIsChecked:Z

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSubId:I

    return v0
.end method

.method static synthetic -get6()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/settings/sim/RadioPowerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mIsChecked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/settings/sim/RadioPowerPreference;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/settings/sim/RadioPowerPreference;Z)V
    .locals 0
    .param p1, "mIsChecked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->handleUserRequest(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/settings/sim/RadioPowerPreference;ILandroid/os/Handler;III)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/settings/sim/RadioPowerPreference;->sendMessage(ILandroid/os/Handler;III)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/settings/sim/RadioPowerPreference;III)V
    .locals 0
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I
    .param p3, "newProvisionedState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/settings/sim/RadioPowerPreference;->showAlertDialog(III)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/settings/sim/RadioPowerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->showProgressDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/mediatek/settings/sim/RadioPowerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 44
    sput-object v0, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscriptionInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSubId:I

    .line 38
    iput-boolean v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mIsChecked:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    .line 221
    new-instance v0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/RadioPowerPreference$1;-><init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 258
    new-instance v0, Lcom/mediatek/settings/sim/RadioPowerPreference$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/RadioPowerPreference$2;-><init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 294
    new-instance v0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/RadioPowerPreference$3;-><init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-static {p1}, Lcom/mediatek/settings/sim/RadioPowerController;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 69
    const v0, 0x7f0400d2

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setWidgetLayoutResource(I)V

    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 66
    return-void
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    const/4 p1, 0x0

    .line 266
    .end local p1    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-void

    .line 272
    .restart local p1    # "dialog":Landroid/app/Dialog;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string/jumbo v2, "RadioPowerPreference"

    const-string/jumbo v3, "As the activity has destroyed,the token is not vaild,dismiss fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "RadioPowerPreference"

    const-string/jumbo v3, "When dismiss the dialog,the activity has been destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized handleUserRequest(Z)V
    .locals 5
    .param p1, "mIsChecked"    # Z

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const/4 v2, 0x2

    const v3, 0x7f0b0d5e

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/settings/sim/RadioPowerPreference;->showAlertDialog(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 127
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 130
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 132
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    const/4 v2, 0x2

    const v3, 0x7f0b0d5f

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/settings/sim/RadioPowerPreference;->showAlertDialog(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 135
    return-void

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "subId":[I
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-virtual {v2, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->disableAllSIM(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const/4 v2, 0x2

    const v3, 0x7f0b0d57

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/settings/sim/RadioPowerPreference;->showAlertDialog(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 141
    return-void

    .line 143
    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/settings/sim/RadioPowerPreference;->showAlertDialog(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 123
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 280
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .prologue
    .line 290
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    return-void
.end method

.method private showAlertDialog(III)V
    .locals 11
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I
    .param p3, "newProvisionedState"    # I

    .prologue
    const v10, 0x104000a

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 174
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v6, :cond_0

    const-string/jumbo v5, "SUB"

    .line 176
    .local v5, "title":Ljava/lang/String;
    :goto_0
    sget-object v6, Lcom/mediatek/settings/sim/RadioPowerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v6}, Lcom/mediatek/settings/sim/RadioPowerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 177
    sget-object v6, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v6}, Lcom/mediatek/settings/sim/RadioPowerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 178
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    const v7, 0x1080027

    .line 178
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/mediatek/settings/sim/RadioPowerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 209
    sget-object v6, Lcom/mediatek/settings/sim/RadioPowerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 211
    :try_start_0
    sget-object v6, Lcom/mediatek/settings/sim/RadioPowerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_2
    return-void

    .line 174
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_0

    .line 184
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    iget-object v7, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mIsChecked:Z

    if-eqz v6, :cond_1

    const v6, 0x7f0b0d55

    :goto_3
    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v7, 0x1040009

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 184
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    const v6, 0x7f0b0d56

    goto :goto_3

    .line 192
    :pswitch_1
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 198
    :pswitch_2
    if-nez p3, :cond_2

    .line 199
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0d5a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "msg":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0, v10, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 200
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0d5c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_4

    .line 215
    .end local v4    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sput-object v8, Lcom/mediatek/settings/sim/RadioPowerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 217
    const-string/jumbo v6, "RadioPowerPreference"

    const-string/jumbo v7, "As the activity has destroyed,dialog not attach"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    sput-object v8, Lcom/mediatek/settings/sim/RadioPowerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 214
    const-string/jumbo v6, "RadioPowerPreference"

    const-string/jumbo v7, "As the activity has destroyed,the token is not vaild"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_0

    const-string/jumbo v1, "SUB"

    .line 158
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mIsChecked:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0b0d58

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 161
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 162
    sget-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 163
    sget-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    sget-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    sget-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 166
    sget-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 167
    sget-object v2, Lcom/mediatek/settings/sim/RadioPowerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 169
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/16 v4, 0x7530

    invoke-direct {p0, v3, v2, v4}, Lcom/mediatek/settings/sim/RadioPowerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 155
    return-void

    .line 156
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0

    .line 159
    :cond_1
    const v2, 0x7f0b0d59

    goto :goto_1
.end method


# virtual methods
.method public bindRadioPowerState(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mSubId:I

    .line 351
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    .line 352
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioEnabled(Z)V

    .line 349
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 99
    const v0, 0x7f1301a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 101
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_A1_FEATURE:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    new-instance v1, Lcom/mediatek/settings/sim/RadioPowerPreference$4;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/sim/RadioPowerPreference$4;-><init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    :cond_1
    return-void
.end method

.method public setDefalut(I)V
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x0

    .line 324
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 325
    .local v2, "slot":I
    if-nez v2, :cond_0

    .line 326
    const/4 v2, 0x1

    .line 330
    :goto_0
    iget-object v4, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "DEFAULT_SUB"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 331
    .local v1, "sharePref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "default"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 335
    .local v3, "subid":[I
    iget-object v4, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mListener:Lcom/mediatek/settings/sim/RadioPowerPreference$SetDefaultListener;

    aget v5, v3, v6

    invoke-interface {v4, v5}, Lcom/mediatek/settings/sim/RadioPowerPreference$SetDefaultListener;->setDefault(I)V

    .line 323
    return-void

    .line 328
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharePref":Landroid/content/SharedPreferences;
    .end local v3    # "subid":[I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 341
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 339
    return-void
.end method

.method protected setListener(Lcom/mediatek/settings/sim/RadioPowerPreference$SetDefaultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/sim/RadioPowerPreference$SetDefaultListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mListener:Lcom/mediatek/settings/sim/RadioPowerPreference$SetDefaultListener;

    .line 150
    return-void
.end method

.method public setRadioEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 91
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public setRadioOn(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    .line 80
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 78
    :cond_0
    return-void
.end method
