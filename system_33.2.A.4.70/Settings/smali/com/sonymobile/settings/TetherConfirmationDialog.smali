.class public Lcom/sonymobile/settings/TetherConfirmationDialog;
.super Landroid/app/Activity;
.source "TetherConfirmationDialog.java"


# instance fields
.field private mCheckbox:Landroid/view/View;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogMessageId:I

.field private mPreferenceShowDialog:Ljava/lang/String;

.field private mShowCheckbox:Z

.field private mTetherChoice:I


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/TetherConfirmationDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    .line 43
    iput v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    .line 45
    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 46
    iput-boolean v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    .line 47
    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    .line 54
    invoke-virtual {p0, v6}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    .line 57
    .local v2, "show":Z
    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v4, "TETHER_TYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const-string/jumbo v4, "TETHER_TYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    .line 61
    :cond_0
    iget v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 63
    const/4 v2, 0x0

    .line 74
    :goto_0
    if-eqz v2, :cond_5

    iget-boolean v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v4, :cond_4

    .line 75
    iget-object v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 77
    .end local v2    # "show":Z
    :goto_1
    if-eqz v2, :cond_1

    iget v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    if-nez v4, :cond_1

    .line 79
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 80
    .local v3, "wifiMan":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 83
    .end local v3    # "wifiMan":Landroid/net/wifi/WifiManager;
    :cond_1
    if-eqz v2, :cond_6

    .line 84
    invoke-virtual {p0, v6, p1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->showDialog(ILandroid/os/Bundle;)Z

    .line 49
    :goto_2
    return-void

    .line 64
    .restart local v2    # "show":Z
    :cond_2
    iget v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    if-ne v4, v7, :cond_3

    .line 66
    const-string/jumbo v4, "show_tether_dialog"

    iput-object v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    .line 67
    const v4, 0x7f0b0c71

    iput v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    goto :goto_0

    .line 70
    :cond_3
    const-string/jumbo v4, "show_wifi_tether_dialog"

    iput-object v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    .line 71
    const v4, 0x7f0b0c6f

    iput v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    goto :goto_0

    .line 74
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 86
    .end local v2    # "show":Z
    :cond_6
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/TetherConfirmationDialog;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->finish()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 100
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v2, 0x7f0b0534

    .line 100
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/sonymobile/settings/TetherConfirmationDialog$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$1;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    const/high16 v3, 0x1040000

    .line 100
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/sonymobile/settings/TetherConfirmationDialog$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$2;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    const v3, 0x104000a

    .line 100
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 122
    new-instance v2, Lcom/sonymobile/settings/TetherConfirmationDialog$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$3;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    .line 100
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 130
    const v2, 0x7f040134

    const/4 v3, 0x0

    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    .line 132
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 135
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method
