.class public Lcom/sonymobile/rcs/settings/RcsProvisionAgain;
.super Landroid/app/Activity;
.source "RcsProvisionAgain.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/settings/RcsProvisionAgain$1;,
        Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;
    }
.end annotation


# instance fields
.field private mActivateJoynText:Landroid/widget/TextView;

.field private mReProvisionSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/settings/RcsProvisionAgain;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->mActivateJoynText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    if-nez p2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;-><init>(Lcom/sonymobile/rcs/settings/RcsProvisionAgain;Lcom/sonymobile/rcs/settings/RcsProvisionAgain$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v2, 0x7f030000

    .line 49
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->setContentView(I)V

    .line 50
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const v2, 0x800015

    invoke-direct {v1, v3, v3, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 53
    .local v1, "params":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;->setMargins(IIII)V

    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->mReProvisionSwitch:Landroid/widget/Switch;

    const/16 v2, 0x1a

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 62
    iget-object v2, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->mReProvisionSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v2, 0x7f050019

    .line 63
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->mReProvisionSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 65
    iget-object v2, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->mReProvisionSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f080001

    .line 66
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->mActivateJoynText:Landroid/widget/TextView;

    .line 68
    return-void
.end method
