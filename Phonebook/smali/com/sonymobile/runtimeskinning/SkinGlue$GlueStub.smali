.class public final Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;
.super Ljava/lang/Object;
.source "SkinGlue.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/SkinGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlueStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/SkinGlue$1;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    return-object v0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public isResourceOverlaid(Landroid/content/Context;Landroid/content/res/Resources;II)Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isSkinConfigurationChanged(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isTrusted(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public myUserId(Landroid/content/Context;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    return v0
.end method

.method public setSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public supportsInstallableSkins(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method
