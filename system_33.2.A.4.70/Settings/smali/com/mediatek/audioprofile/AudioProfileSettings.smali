.class public Lcom/mediatek/audioprofile/AudioProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AudioProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;,
        Lcom/mediatek/audioprofile/AudioProfileSettings$1;,
        Lcom/mediatek/audioprofile/AudioProfileSettings$2;,
        Lcom/mediatek/audioprofile/AudioProfileSettings$3;,
        Lcom/mediatek/audioprofile/AudioProfileSettings$4;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE:I = 0x3

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_NAME:I = 0x0

.field private static final DIALOG_RESET:I = 0x2

.field private static final ERROR_COUNT_OVERFLOW:I = 0x2

.field private static final ERROR_NAME_EXIST:I = 0x0

.field private static final ERROR_NAME_LENGTH:I = 0x1

.field private static final GENERAL_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_general"

.field private static final H_RESET_SUCCESS:I = 0xb

.field private static final MEETING_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final MENUID_ADD:I = 0x1

.field private static final MENUID_DELETE:I = 0x4

.field private static final MENUID_ENABLE:I = 0x2

.field private static final MENUID_RENAME:I = 0x3

.field private static final MENUID_RESET:I = 0x2

.field private static final OUTDOOR_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_outdoor"

.field private static final PREDEFINEDCATEGORY:Ljava/lang/String; = "predefine"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SILENT_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_silent"

.field private static final TAG:Ljava/lang/String; = "AudioProfileSettings:"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/AudioP"

.field private static mEditProfileKey:Ljava/lang/String;

.field private static mErrorType:I

.field private static mMenuId:I

.field private static mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field public mCurrentDialogId:I

.field private mCustomerExist:Z

.field private mCustomerProfilePrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfilePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKey:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

.field private mHandler:Landroid/os/Handler;

.field private mIsSwitchUser:Z

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mPredefineParent:Landroid/preference/PreferenceCategory;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mProfileSettingListener:Landroid/view/View$OnClickListener;

.field private mProfileTitle:[Ljava/lang/String;

.field private mRenameDialogtext:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/mediatek/audioprofile/AudioProfileSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/audioprofile/AudioProfileSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/audioprofile/AudioProfileSettings;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPredefineParent:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/audioprofile/AudioProfileSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mIsSwitchUser:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 708
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$4;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/AudioProfileSettings$4;-><init>()V

    .line 707
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 120
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 131
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mIsSwitchUser:Z

    .line 141
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 155
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    .line 86
    return-void
.end method

.method private addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 263
    .local v2, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const/4 v1, 0x0

    .line 264
    .local v1, "preference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1    # "preference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;)V

    .line 266
    .local v1, "preference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v1, p2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setProfileKey(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string/jumbo v3, "@M_Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioProfileSettings:Add into profile list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v3, :cond_0

    .line 273
    const-string/jumbo v3, "@M_Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioProfileSettings:resume mPref: rename profile, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 274
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditProfileKey:Ljava/lang/String;

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sput-object v1, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 278
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    if-nez v3, :cond_1

    .line 279
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPredefineParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 282
    const-string/jumbo v3, "@M_Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioProfileSettings:Add into profile preference "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    .line 288
    const-string/jumbo v3, "@M_Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioProfileSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "preference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_2
    return-object v1
.end method

.method private dismissFrag()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 661
    const-string/jumbo v0, "@M_Settings/AudioP"

    const-string/jumbo v1, "Dismiss fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mIsSwitchUser:Z

    if-eqz v0, :cond_0

    .line 663
    iput-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mIsSwitchUser:Z

    .line 664
    const-string/jumbo v0, "@M_Settings/AudioP"

    const-string/jumbo v1, "AudioProfileSettings will be finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->finish()V

    .line 666
    const/4 v0, 0x1

    return v0

    .line 668
    :cond_0
    return v2
.end method

.method private dynamicshowSummary()V
    .locals 3

    .prologue
    .line 323
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 324
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 325
    .local v0, "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto :goto_0

    .line 321
    .end local v0    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_0
    return-void
.end method

.method private updateActivePreference()V
    .locals 5

    .prologue
    .line 309
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "@M_Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioProfileSettings:key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 313
    .local v0, "activePreference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 308
    :cond_1
    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 8

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 227
    .local v4, "root":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllProfileKeys()Ljava/util/List;

    move-result-object v3

    .line 228
    .local v3, "profileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 229
    const-string/jumbo v5, "@M_Settings/AudioP"

    const-string/jumbo v6, "AudioProfileSettings:profileKey size is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 232
    :cond_0
    const-string/jumbo v5, "@M_Settings/AudioP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AudioProfileSettings:profileKey size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 236
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 223
    :cond_2
    return-void

    .line 240
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 241
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPredefineParent:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_4
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 244
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profileKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    .local v1, "profileKey":Ljava/lang/String;
    invoke-direct {p0, v4, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 726
    const v0, 0x186a4

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 586
    const-string/jumbo v4, "@M_Settings/AudioP"

    const-string/jumbo v5, "onClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string/jumbo v4, "@M_Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 589
    const-string/jumbo v4, "@M_Settings/AudioP"

    const-string/jumbo v5, "return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 592
    :cond_0
    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    packed-switch v4, :pswitch_data_0

    .line 654
    const-string/jumbo v4, "@M_Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioProfileSettings:unrecongnized dialog id is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 655
    iget v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 654
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    :goto_0
    return-void

    .line 594
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-nez v4, :cond_2

    const-string/jumbo v3, ""

    .line 596
    .local v3, "title":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 597
    sput v8, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 598
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 594
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1

    .line 599
    :cond_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v4, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->isNameExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 600
    sput v7, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 601
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 603
    :cond_4
    sget v4, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v4, v8, :cond_6

    .line 604
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->addProfile()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "profileKey":Ljava/lang/String;
    const-string/jumbo v4, "@M_Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioProfileSettings:add profile Key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 607
    invoke-direct {p0, v4, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    move-result-object v0

    .line 610
    .local v0, "activePreference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-nez v0, :cond_5

    .line 611
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 612
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .line 614
    :cond_5
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v4, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 616
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto :goto_0

    .line 619
    .end local v0    # "activePreference":Lcom/mediatek/audioprofile/AudioProfilePreference;
    .end local v2    # "profileKey":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "@M_Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick  mPref.setTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4, v3, v8}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 625
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_1
    sget v4, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 626
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 630
    :pswitch_2
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 631
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 632
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 634
    :cond_7
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->deleteProfile(Ljava/lang/String;)Z

    .line 635
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPredefineParent:Landroid/preference/PreferenceCategory;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 636
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 637
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 639
    iput-boolean v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto/16 :goto_0

    .line 643
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_9

    .line 644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 645
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPredefineParent:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 647
    :cond_8
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 648
    iput-boolean v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 650
    .end local v1    # "i":I
    :cond_9
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPredefineParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 651
    new-instance v4, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;

    invoke-direct {v4, p0, v9}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;)V

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 472
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 474
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 475
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 474
    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 476
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v2, :cond_0

    .line 477
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    sput-object v1, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 478
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditProfileKey:Ljava/lang/String;

    .line 479
    const-string/jumbo v2, "@M_Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onContextItemSelected  mPref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfilePreference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 480
    const-string/jumbo v4, " mEditProfileKey = "

    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 480
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditProfileKey:Ljava/lang/String;

    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 494
    return v5

    .line 483
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    .line 484
    return v6

    .line 486
    :pswitch_1
    sput v7, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 487
    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    .line 488
    return v6

    .line 490
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 491
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 492
    return v6

    .line 497
    .restart local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    return v5

    .line 481
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 172
    const-string/jumbo v3, "@M_Settings/AudioP"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/UtilsExt;->getAudioProfilePlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    .line 179
    const-string/jumbo v3, "audioprofile"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 181
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 182
    .local v2, "root":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 185
    :cond_0
    const v3, 0x7f080012

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreferencesFromResource(I)V

    .line 187
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->addCustomizedPreference(Landroid/preference/PreferenceScreen;)V

    .line 188
    const-string/jumbo v3, "predefine"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPredefineParent:Landroid/preference/PreferenceCategory;

    .line 190
    const-string/jumbo v3, "mtk_audioprofile_general"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 191
    .local v1, "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const-string/jumbo v3, "mtk_audioprofile_silent"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 193
    .restart local v1    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const-string/jumbo v3, "mtk_audioprofile_meeting"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 195
    .restart local v1    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const-string/jumbo v3, "mtk_audioprofile_outdoor"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 197
    .restart local v1    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mtk_audioprofile_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfilePreference;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 203
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileSettings$5;

    invoke-direct {v3, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$5;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->setHasOptionsMenu(Z)V

    .line 171
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x0

    .line 443
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 444
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 445
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 446
    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 445
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 447
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v4, v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "key":Ljava/lang/String;
    check-cast v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    .line 450
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 451
    const/4 v4, 0x2

    const v5, 0x7f0b00ae

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 452
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 453
    .local v3, "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    const/4 v4, 0x3

    .line 455
    const v5, 0x7f0b00af

    .line 454
    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 456
    const/4 v4, 0x4

    .line 457
    const v5, 0x7f0b00b0

    .line 456
    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 442
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const v6, 0x1080027

    const/high16 v9, 0x1040000

    const v8, 0x104000a

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "dialog":Landroid/app/Dialog;
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 515
    if-nez p1, :cond_4

    .line 516
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 517
    const v4, 0x7f040062

    .line 516
    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, "content":Landroid/view/View;
    const v3, 0x7f1300b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 519
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    const v4, 0x10001

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 522
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_2

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    sget v3, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_3

    const v3, 0x7f0b00ad

    .line 525
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 529
    const v4, 0x7f0b00b2

    .line 525
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 533
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 535
    const/16 v4, 0x24

    .line 533
    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 574
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_1
    :goto_2
    return-object v1

    .line 523
    .restart local v0    # "content":Landroid/view/View;
    .local v1, "dialog":Landroid/app/Dialog;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    goto :goto_0

    .line 528
    :cond_3
    const v3, 0x7f0b00af

    goto :goto_1

    .line 537
    .end local v0    # "content":Landroid/view/View;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, "stringId":I
    sget v3, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    packed-switch v3, :pswitch_data_0

    .line 552
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 553
    const v4, 0x7f0b00b9

    .line 552
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Landroid/app/Dialog;
    goto :goto_2

    .line 541
    .local v1, "dialog":Landroid/app/Dialog;
    :pswitch_0
    const v2, 0x7f0b00b6

    .line 542
    goto :goto_3

    .line 544
    :pswitch_1
    const v2, 0x7f0b00b3

    .line 545
    goto :goto_3

    .line 547
    :pswitch_2
    const v2, 0x7f0b00b4

    .line 548
    goto :goto_3

    .line 557
    .end local v2    # "stringId":I
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 558
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    const v4, 0x7f0b00ac

    .line 558
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 561
    const v4, 0x7f0b00b1

    .line 558
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Landroid/app/Dialog;
    goto :goto_2

    .line 564
    .local v1, "dialog":Landroid/app/Dialog;
    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 565
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 566
    const v4, 0x7f0b00b0

    .line 565
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 569
    new-array v4, v5, [Ljava/lang/Object;

    .line 570
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 569
    const v5, 0x7f0b00b5

    invoke-virtual {p0, v5, v4}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Landroid/app/Dialog;
    goto/16 :goto_2

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 398
    const/4 v0, 0x1

    const v1, 0x7f0b00ad

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 400
    const/4 v0, 0x2

    const v1, 0x7f0b00ac

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 397
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 414
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 415
    sput v3, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 416
    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    .line 417
    return v2

    .line 419
    :cond_0
    sput v2, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 420
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    .line 421
    return v2

    .line 422
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 423
    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    .line 424
    return v2

    .line 426
    :cond_2
    return v4
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 357
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 358
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 359
    const/4 v2, 0x0

    .line 358
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 361
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v0, p0}, Lcom/mediatek/settings/ext/IAudioProfileExt;->onAudioProfileSettingPaused(Landroid/preference/PreferenceFragment;)V

    .line 356
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 375
    instance-of v2, p2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 376
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 377
    .local v1, "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 382
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "pref":Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/settings/ext/IAudioProfileExt;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    const/4 v2, 0x1

    return v2

    .line 385
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 334
    const-string/jumbo v0, "@M_Settings/AudioP"

    const-string/jumbo v1, "AudioProfileSettings:onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 336
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->dismissFrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    return-void

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updatePreferenceHierarchy()V

    .line 342
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->dynamicshowSummary()V

    .line 343
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updateActivePreference()V

    .line 345
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 347
    const/4 v2, 0x1

    .line 346
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v0, p0}, Lcom/mediatek/settings/ext/IAudioProfileExt;->onAudioProfileSettingResumed(Landroid/preference/PreferenceFragment;)V

    .line 333
    return-void
.end method
