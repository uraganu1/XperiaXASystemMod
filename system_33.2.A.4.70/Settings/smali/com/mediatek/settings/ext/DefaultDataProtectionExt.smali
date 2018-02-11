.class public Lcom/mediatek/settings/ext/DefaultDataProtectionExt;
.super Landroid/content/ContextWrapper;
.source "DefaultDataProtectionExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IDataProtectionExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDataProectionExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public addDataPrf(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 16
    const-string/jumbo v0, "DefaultDataProectionExt"

    const-string/jumbo v1, "will not add data protection preference by default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method
