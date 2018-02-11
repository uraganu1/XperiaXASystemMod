.class public Lcom/mediatek/settings/ext/DefaultMdmPermControlExt;
.super Landroid/content/ContextWrapper;
.source "DefaultMdmPermControlExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IMdmPermissionControlExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMdmPermControlExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 17
    const-string/jumbo v0, "DefaultMdmPermControlExt"

    const-string/jumbo v1, "will not add mdm permission control"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method
