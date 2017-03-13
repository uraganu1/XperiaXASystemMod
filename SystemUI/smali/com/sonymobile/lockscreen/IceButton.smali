.class public Lcom/sonymobile/lockscreen/IceButton;
.super Landroid/widget/Button;
.source "IceButton.java"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/lockscreen/IceButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/lockscreen/IceButton;->launchIceContactInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/lockscreen/IceButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private launchIceContactInfo()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.SHOW_ICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    .line 109
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 108
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 46
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 47
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sonymobile/lockscreen/IceButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "iceEnabled":Z
    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 51
    sget v6, Lcom/android/keyguard/R$bool;->enable_sonymobile_lockscreen_ice:I

    .line 50
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 52
    .local v4, "iceSupported":Z
    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 53
    sget v6, Lcom/android/keyguard/R$bool;->enable_sonymobile_lockscreen_ice_icon:I

    .line 52
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 54
    .local v2, "iceIconEnabled":Z
    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 55
    sget v6, Lcom/android/keyguard/R$integer;->sonymobile_lockscreen_ice_label_index:I

    .line 54
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 57
    .local v3, "iceLabelIndex":I
    if-eqz v4, :cond_0

    .line 60
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 61
    const-string/jumbo v6, "sonymobile_lockscreen_ice_enabled"

    .line 62
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    .line 59
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v9, v5, :cond_3

    const/4 v1, 0x1

    .line 71
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 72
    invoke-virtual {p0, v8}, Lcom/sonymobile/lockscreen/IceButton;->setVisibility(I)V

    .line 77
    :goto_1
    if-nez v2, :cond_1

    .line 79
    invoke-virtual {p0, v8, v8, v8, v8}, Lcom/sonymobile/lockscreen/IceButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 82
    :cond_1
    if-nez v3, :cond_5

    .line 84
    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->somc_kg_ice_button_label_0:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/lockscreen/IceButton;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/sonymobile/keyguard/SomcKeyguardUtils;->limitButtonTextSize(Landroid/content/Context;Landroid/widget/Button;)V

    .line 92
    new-instance v5, Lcom/sonymobile/lockscreen/IceButton$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/lockscreen/IceButton$1;-><init>(Lcom/sonymobile/lockscreen/IceButton;)V

    invoke-virtual {p0, v5}, Lcom/sonymobile/lockscreen/IceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void

    .line 59
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v5, "IceButton"

    const-string/jumbo v6, "ICE setting not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/sonymobile/lockscreen/IceButton;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_5
    if-ne v3, v9, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->somc_kg_ice_button_label_1:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/lockscreen/IceButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
