.class public Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;
.super Landroid/content/ContextWrapper;
.source "DefaultStatusBarPlmnDisplayExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;


# static fields
.field static final TAG:Ljava/lang/String; = "DefaultStatusBarPlmnDisplayExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 12
    const-string/jumbo v0, "@M_DefaultStatusBarPlmnDisplayExt"

    const-string/jumbo v1, "Into DefaultStatusBarPlmnPlugin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method


# virtual methods
.method public createCheckBox(Landroid/preference/PreferenceScreen;I)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/PreferenceScreen;
    .param p2, "j"    # I

    .prologue
    .line 16
    const-string/jumbo v0, "@M_DefaultStatusBarPlmnDisplayExt"

    const-string/jumbo v1, "Into Default createCheckBox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method
