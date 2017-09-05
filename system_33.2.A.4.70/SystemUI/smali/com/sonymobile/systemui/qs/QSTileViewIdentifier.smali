.class public Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
.super Ljava/lang/Object;
.source "QSTileViewIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mName:Ljava/lang/String;

.field private mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 16
    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 22
    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 23
    iput p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 28
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 29
    iput p2, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    .line 30
    iput-object p3, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    .line 43
    return-void
.end method

.method public setStatus(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 39
    return-void
.end method
