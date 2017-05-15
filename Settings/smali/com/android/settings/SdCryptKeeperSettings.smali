.class public Lcom/android/settings/SdCryptKeeperSettings;
.super Landroid/app/Fragment;
.source "SdCryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SdCryptKeeperSettings$1;
    }
.end annotation


# static fields
.field private static START_ENCRYPTION_INTERNAL_AND_SDCARD:I


# instance fields
.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSdCryptKeeperOffTextView:Landroid/view/View;

.field private mSdCryptKeeperOnTextView:Landroid/view/View;

.field private mSdEncrypt:Z

.field private mSdEncryptMultimedia:Z

.field private mSdEncryptMultimediaCheckBox:Landroid/widget/CheckBox;

.field private mSdEncryptMultimediaContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/settings/SdCryptKeeperSettings;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/SdCryptKeeperSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimedia:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/SdCryptKeeperSettings;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SdCryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/SdCryptKeeperSettings;->START_ENCRYPTION_INTERNAL_AND_SDCARD:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings/SdCryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SdCryptKeeperSettings$1;-><init>(Lcom/android/settings/SdCryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method private isExternalSdCardEncrypted()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 239
    const-string/jumbo v3, "sdencrypt_on"

    .line 238
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isExternalSdCardMultimediaEncrypted()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 244
    const-string/jumbo v3, "sdencrypt_multimedia_on"

    .line 243
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 178
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 180
    return v4

    .line 184
    :cond_0
    const v2, 0x7f0b0c78

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    .line 183
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    const/16 v8, 0x37

    if-eq p1, v8, :cond_0

    .line 192
    return-void

    .line 197
    :cond_0
    const/4 v8, -0x1

    if-ne p2, v8, :cond_2

    if-eqz p3, :cond_2

    .line 198
    const-string/jumbo v8, "password"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "password":Ljava/lang/String;
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 199
    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 202
    .local v4, "mountService":Landroid/os/storage/IMountService;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 205
    :try_start_0
    const-string/jumbo v8, "SdCryptKeeperSettings"

    const-string/jumbo v9, "start sd card encrypting..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-boolean v8, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncrypt:Z

    if-eqz v8, :cond_3

    const/4 v5, 0x0

    .line 211
    .local v5, "newEncryptStatus":Z
    :goto_0
    iget-boolean v8, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimedia:Z

    .line 210
    invoke-interface {v4, v5, v8}, Landroid/os/storage/IMountService;->activateFileEncryption(ZZ)I

    move-result v7

    .line 212
    .local v7, "rc":I
    if-nez v7, :cond_1

    .line 217
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "somc.intent.action.ACTION_ENCRYPTION_TRIGGERED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "encrIntent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v8, "sdcard"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    const-string/jumbo v8, "enabled"

    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "encrIntent":Landroid/content/Intent;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "newEncryptStatus":Z
    .end local v7    # "rc":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_2

    .line 232
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 188
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v6    # "password":Ljava/lang/String;
    :cond_2
    return-void

    .line 208
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    .restart local v6    # "password":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "newEncryptStatus":Z
    goto :goto_0

    .line 225
    .end local v5    # "newEncryptStatus":Z
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "SdCryptKeeperSettings"

    const-string/jumbo v9, "Exception while encrypting:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 98
    const v3, 0x7f0400e1

    invoke-virtual {p1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 100
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mContentView:Landroid/view/View;

    const v4, 0x7f1301bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOnTextView:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mContentView:Landroid/view/View;

    const v4, 0x7f1301be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOffTextView:Landroid/view/View;

    .line 104
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mContentView:Landroid/view/View;

    const v4, 0x7f1301bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 103
    iput-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaContainer:Landroid/view/View;

    .line 107
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mContentView:Landroid/view/View;

    const v4, 0x7f1301c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 106
    iput-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaCheckBox:Landroid/widget/CheckBox;

    .line 109
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mContentView:Landroid/view/View;

    const v4, 0x7f1301c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 110
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 113
    .local v1, "isOwner":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 115
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 117
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-virtual {p0}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 118
    const-string/jumbo v4, "device_policy"

    .line 117
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 120
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/settings/SdCryptKeeperSettings;->isExternalSdCardEncrypted()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncrypt:Z

    .line 121
    invoke-direct {p0}, Lcom/android/settings/SdCryptKeeperSettings;->isExternalSdCardMultimediaEncrypted()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimedia:Z

    .line 123
    iget-boolean v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncrypt:Z

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const v4, 0x7f0b0c77

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 125
    iput-boolean v5, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimedia:Z

    .line 126
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimedia:Z

    if-eqz v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOnTextView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOffTextView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iput-boolean v5, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncrypt:Z

    .line 163
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimedia:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v3

    .line 112
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "isOwner":Z
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isOwner":Z
    goto :goto_0

    .line 136
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOnTextView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOffTextView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 138
    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 144
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const v4, 0x7f0b0c76

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOnTextView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdCryptKeeperOffTextView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    iput-boolean v5, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimedia:Z

    .line 150
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v3, p0, Lcom/android/settings/SdCryptKeeperSettings;->mSdEncryptMultimediaContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/SdCryptKeeperSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SdCryptKeeperSettings$2;-><init>(Lcom/android/settings/SdCryptKeeperSettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
