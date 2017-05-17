.class public final Lcom/sonymobile/settings/systemicon/SystemIconInfo;
.super Ljava/lang/Object;
.source "SystemIconInfo.java"


# instance fields
.field private mActivated:Z

.field private mEnabled:Z

.field private mIconNameId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mTextNameId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "activated"    # Z
    .param p3, "iconNameId"    # Ljava/lang/String;
    .param p4, "textNameId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mEnabled:Z

    .line 17
    iput-object p1, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mName:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mActivated:Z

    .line 19
    iput-object p3, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mIconNameId:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mTextNameId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getIconNameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mIconNameId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextNameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mTextNameId:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mActivated:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mEnabled:Z

    return v0
.end method

.method public setActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mActivated:Z

    .line 33
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->mEnabled:Z

    .line 49
    return-void
.end method
