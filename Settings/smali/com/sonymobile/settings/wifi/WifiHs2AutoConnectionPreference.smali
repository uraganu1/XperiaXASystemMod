.class public Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;
.super Lcom/sonymobile/settings/preference/DialogPreference;
.source "WifiHs2AutoConnectionPreference.java"


# instance fields
.field private mSwitch:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    const v1, 0x7f0d0056

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/settings/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->mSwitch:Landroid/widget/Checkable;

    .line 24
    return-void
.end method

.method private isHs2AutoConnectionEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 59
    const-string/jumbo v3, "wifi_hs2_auto_connection"

    .line 58
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private update(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "wifi_hs2_auto_connection"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 63
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    iget-object v0, p0, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->mSwitch:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 62
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/sonymobile/settings/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 53
    const v0, 0x10203a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->mSwitch:Landroid/widget/Checkable;

    .line 54
    invoke-direct {p0}, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->isHs2AutoConnectionEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->update(Z)V

    .line 51
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->isHs2AutoConnectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->update(Z)V

    .line 29
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/settings/preference/DialogPreference;->onClick()V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/wifi/WifiHs2AutoConnectionPreference;->update(Z)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 38
    const v0, 0x7f0b0ce5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    const v1, 0x7f0b0ce6

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    const v1, 0x104000a

    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    return-void
.end method
