.class public Lcom/mediatek/lbs/em2/utils/AgpsConfig;
.super Ljava/lang/Object;
.source "AgpsConfig.java"


# instance fields
.field public agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

.field public cdmaProfile:Lcom/mediatek/lbs/em2/utils/CdmaProfile;

.field public cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

.field public curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

.field public suplProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/lbs/em2/utils/SuplProfile;",
            ">;"
        }
    .end annotation
.end field

.field public upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->suplProfiles:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lcom/mediatek/lbs/em2/utils/SuplProfile;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/SuplProfile;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .line 17
    new-instance v0, Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/CdmaProfile;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cdmaProfile:Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    .line 18
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/AgpsSetting;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    .line 19
    new-instance v0, Lcom/mediatek/lbs/em2/utils/CpSetting;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/CpSetting;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

    .line 20
    new-instance v0, Lcom/mediatek/lbs/em2/utils/UpSetting;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/UpSetting;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;

    .line 21
    return-void
.end method


# virtual methods
.method public getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    return-object v0
.end method

.method public getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

    return-object v0
.end method

.method public getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    return-object v0
.end method

.method public getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string/jumbo v2, ""

    .line 49
    .local v2, "ret":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "### SuplProfiles ###\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->suplProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "### SuplProfile ###\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "### CdmaProfile ###\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cdmaProfile:Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "### AgpsSetting ###\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "### CpSetting ###\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "### UpSetting ###\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    return-object v2

    .line 50
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .line 51
    .local v1, "p":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
