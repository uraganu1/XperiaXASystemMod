.class public interface abstract Lcom/mediatek/settings/ext/IPermissionControlExt;
.super Ljava/lang/Object;
.source "IPermissionControlExt.java"


# virtual methods
.method public abstract addAutoBootPrf(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract enablerPause()V
.end method

.method public abstract enablerResume()V
.end method

.method public abstract getRawDataToIndex(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end method
