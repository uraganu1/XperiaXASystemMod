.class public Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;
.super Lcom/android/settings/notification/VolumeSeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolumeeekBarUtil:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const v0, 0x1160029

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 45
    new-instance v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sonymobile/settings/preference/VolumeSeekBarPreference;)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mVolumeeekBarUtil:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    .line 46
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mUserManager:Landroid/os/UserManager;

    .line 42
    return-void
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public dependOn()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mVolumeeekBarUtil:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->isEnable()Z

    move-result v0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mVolumeeekBarUtil:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->stopSample()V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->onActivityResume()V

    .line 89
    iget-object v1, p0, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 90
    .local v0, "isRestricted":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 87
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
