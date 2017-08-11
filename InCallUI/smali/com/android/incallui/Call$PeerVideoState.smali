.class public Lcom/android/incallui/Call$PeerVideoState;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerVideoState"
.end annotation


# instance fields
.field private mIsPeerVideoAvailable:Z

.field private mPeerDimensionHeight:I

.field private mPeerDimensionWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput v0, p0, Lcom/android/incallui/Call$PeerVideoState;->mPeerDimensionWidth:I

    .line 205
    iput v0, p0, Lcom/android/incallui/Call$PeerVideoState;->mPeerDimensionHeight:I

    .line 197
    return-void
.end method


# virtual methods
.method public getPeerDimensionHeight()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/incallui/Call$PeerVideoState;->mPeerDimensionHeight:I

    return v0
.end method

.method public getPeerDimensionWidth()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/incallui/Call$PeerVideoState;->mPeerDimensionWidth:I

    return v0
.end method

.method public isPeerVideoAvailable()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/incallui/Call$PeerVideoState;->mIsPeerVideoAvailable:Z

    return v0
.end method

.method public setPeerDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/android/incallui/Call$PeerVideoState;->mPeerDimensionWidth:I

    .line 231
    iput p2, p0, Lcom/android/incallui/Call$PeerVideoState;->mPeerDimensionHeight:I

    .line 229
    return-void
.end method

.method public setPeerVideoAvailable(Z)V
    .locals 0
    .param p1, "isPeerVideoAvailable"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/incallui/Call$PeerVideoState;->mIsPeerVideoAvailable:Z

    .line 212
    return-void
.end method
