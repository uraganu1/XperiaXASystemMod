.class public Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;
.super Ljava/lang/Object;
.source "StorageSettingsExts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;
    }
.end annotation


# instance fields
.field private defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mActivity:Landroid/app/Activity;

.field private mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mDiskCategory:Landroid/preference/PreferenceCategory;

.field private mIsCategoryAdded:Z

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    return-object p1
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mIsCategoryAdded:Z

    .line 113
    new-instance v0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;-><init>(Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 51
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mRoot:Landroid/preference/PreferenceScreen;

    .line 53
    iput-object p3, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 50
    return-void
.end method

.method private initDefaultWriteDiskCategory()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mRoot:Landroid/preference/PreferenceScreen;

    .line 58
    const-string/jumbo v1, "default_write_disk"

    .line 57
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mDiskCategory:Landroid/preference/PreferenceCategory;

    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->mDiskCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 56
    return-void
.end method

.method private updateDefaultWriteDiskCategory()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method


# virtual methods
.method public initCustomizationCategory()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->initDefaultWriteDiskCategory()V

    .line 146
    return-void
.end method

.method public updateCustomizationCategory()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->updateDefaultWriteDiskCategory()V

    .line 150
    return-void
.end method
