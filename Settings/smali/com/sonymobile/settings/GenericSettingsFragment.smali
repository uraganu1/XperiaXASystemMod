.class public Lcom/sonymobile/settings/GenericSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GenericSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/GenericSettingsFragment$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mHelpResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/sonymobile/settings/GenericSettingsFragment$1;

    invoke-direct {v0}, Lcom/sonymobile/settings/GenericSettingsFragment$1;-><init>()V

    .line 79
    sput-object v0, Lcom/sonymobile/settings/GenericSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sonymobile/settings/GenericSettingsFragment;->mHelpResource:I

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 42
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v7, "extra_fragment_preference_xml"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    :goto_0
    if-eqz v3, :cond_3

    const-string/jumbo v7, "xml"

    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 47
    invoke-virtual {v4, v3, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 51
    .local v5, "xmlRes":I
    :goto_1
    if-eqz v0, :cond_4

    const-string/jumbo v7, "extra_fragment_help_resource"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_2
    if-eqz v1, :cond_0

    const-string/jumbo v6, "string"

    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    iput v6, p0, Lcom/sonymobile/settings/GenericSettingsFragment;->mHelpResource:I

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    if-eqz v5, :cond_5

    .line 57
    invoke-virtual {p0, v5}, Lcom/sonymobile/settings/GenericSettingsFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->customizePreferences()V

    .line 59
    invoke-static {v3}, Lcom/sonymobile/settings/preferencecontroller/GenericSettingsPreferenceControllerFactory;->create(Ljava/lang/String;)Lcom/sonymobile/settings/preferencecontroller/PreferenceController;

    move-result-object v2

    .line 61
    .local v2, "preferenceController":Lcom/sonymobile/settings/preferencecontroller/PreferenceController;
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v2, v6, p0}, Lcom/sonymobile/settings/preferencecontroller/PreferenceController;->initPreferences(Landroid/content/Context;Landroid/preference/PreferenceFragment;)V

    .line 40
    .end local v2    # "preferenceController":Lcom/sonymobile/settings/preferencecontroller/PreferenceController;
    :cond_1
    :goto_3
    return-void

    .line 46
    .end local v5    # "xmlRes":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "preferenceResource":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v3    # "preferenceResource":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "xmlRes":I
    goto :goto_1

    .line 51
    :cond_4
    const/4 v1, 0x0

    .local v1, "help":Ljava/lang/String;
    goto :goto_2

    .line 65
    .end local v1    # "help":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "GenericSettingsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Missing valid extra_fragment_preference_xml="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
