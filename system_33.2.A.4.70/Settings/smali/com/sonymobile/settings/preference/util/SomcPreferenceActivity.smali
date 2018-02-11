.class public abstract Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;
.super Lcom/android/settings/InstrumentedPreferenceActivity;
.source "SomcPreferenceActivity.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/PreferencesAdder;


# instance fields
.field private mResumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->onPause()V

    .line 39
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dependOn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 41
    .local v0, "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onPause()V

    goto :goto_0

    .line 37
    .end local v0    # "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v1    # "dependOn$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->onResume()V

    .line 24
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    .line 27
    invoke-static {p0, v2, p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dependOn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 32
    .local v0, "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onResume()V

    goto :goto_0

    .line 21
    .end local v0    # "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    :cond_1
    return-void
.end method
