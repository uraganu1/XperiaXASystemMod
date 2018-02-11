.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    }
.end annotation


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/IRCSSettings;

.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

.field private mSmsDialogExt:Lcom/mediatek/settings/ext/ISmsDialogExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f0b054b

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 128
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 129
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    return v4

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 134
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v0, 0x7f0b054a

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 135
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 136
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v0, :cond_3

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-static {p0, v10}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v8

    .line 141
    .local v8, "oldSmsComponent":Landroid/content/ComponentName;
    if-eqz v8, :cond_1

    .line 143
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v7

    .line 144
    .local v7, "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v0, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    return v4

    .line 151
    .end local v7    # "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    if-eqz v7, :cond_2

    .line 158
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 160
    iget-object v2, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 158
    const v2, 0x7f0b054b

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mSmsDialogExt:Lcom/mediatek/settings/ext/ISmsDialogExt;

    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 172
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    .line 173
    iget-object v5, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object v2, p1

    .line 171
    invoke-interface/range {v0 .. v5}, Lcom/mediatek/settings/ext/ISmsDialogExt;->buildMessage(Lcom/android/internal/app/AlertController$AlertParams;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_1
    const v0, 0x7f0b0155

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 181
    const v0, 0x7f0b0156

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 182
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 183
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 191
    .end local v8    # "oldSmsComponent":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    .line 193
    return v10

    .line 161
    .restart local v8    # "oldSmsComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 162
    .local v6, "e":Ljava/util/MissingFormatArgumentException;
    const-string/jumbo v0, "SmsDefaultDialog"

    const-string/jumbo v2, "The %3$s is displayed as the same as mNewSmsApplicationData.mApplicationName."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 165
    iget-object v2, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v2, v0, v10

    .line 166
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v2, v0, v5

    .line 163
    invoke-virtual {p0, v11, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 177
    .end local v6    # "e":Ljava/util/MissingFormatArgumentException;
    :cond_2
    new-array v0, v10, [Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 177
    const v2, 0x7f0b054c

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .line 186
    .end local v8    # "oldSmsComponent":Landroid/content/ComponentName;
    :cond_3
    new-instance v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;-><init>(Lcom/android/settings/SmsDefaultDialog;)V

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 187
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 188
    const v0, 0x7f0b0226

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 189
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 89
    packed-switch p2, :pswitch_data_0

    .line 107
    if-ltz p2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    .line 109
    .local v0, "adapter":Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    invoke-virtual {v0, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-virtual {v0, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mSmsDialogExt:Lcom/mediatek/settings/ext/ISmsDialogExt;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 114
    invoke-interface {v2, v1, p0, v3, p2}, Lcom/mediatek/settings/ext/ISmsDialogExt;->onClick(Ljava/lang/String;Lcom/android/internal/app/AlertActivity;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mExt:Lcom/mediatek/settings/ext/IRCSSettings;

    invoke-interface {v2, v1, p0}, Lcom/mediatek/settings/ext/IRCSSettings;->setDefaultSmsApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 119
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 88
    .end local v0    # "adapter":Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 93
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog;->mSmsDialogExt:Lcom/mediatek/settings/ext/ISmsDialogExt;

    .line 94
    iget-object v4, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 93
    invoke-interface {v3, v2, p0, v4, p2}, Lcom/mediatek/settings/ext/ISmsDialogExt;->onClick(Ljava/lang/String;Lcom/android/internal/app/AlertActivity;Landroid/content/Context;I)Z

    .line 97
    invoke-virtual {p0, v5}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog;->mSmsDialogExt:Lcom/mediatek/settings/ext/ISmsDialogExt;

    .line 102
    iget-object v4, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 101
    invoke-interface {v3, v2, p0, v4, p2}, Lcom/mediatek/settings/ext/ISmsDialogExt;->onClick(Ljava/lang/String;Lcom/android/internal/app/AlertActivity;Landroid/content/Context;I)Z

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->getSMSApDialogPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISmsDialogExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mSmsDialogExt:Lcom/mediatek/settings/ext/ISmsDialogExt;

    .line 79
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 80
    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->getRcsSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRCSSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mExt:Lcom/mediatek/settings/ext/IRCSSettings;

    .line 71
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mSmsDialogExt:Lcom/mediatek/settings/ext/ISmsDialogExt;

    invoke-interface {v0, p1, p2, p0}, Lcom/mediatek/settings/ext/ISmsDialogExt;->onKeyDown(ILandroid/view/KeyEvent;Lcom/android/internal/app/AlertActivity;)Z

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
