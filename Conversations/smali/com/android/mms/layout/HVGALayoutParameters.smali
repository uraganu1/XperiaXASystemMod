.class public Lcom/android/mms/layout/HVGALayoutParameters;
.super Ljava/lang/Object;
.source "HVGALayoutParameters.java"

# interfaces
.implements Lcom/android/mms/layout/LayoutParameters;


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    .line 37
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad layout type detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const-string/jumbo v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HVGALayoutParameters.<init>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 45
    :cond_1
    iput p1, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    .line 36
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x140

    :goto_0
    return v0

    .line 55
    :cond_0
    const/16 v0, 0x1e0

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf0

    :goto_0
    return v0

    .line 60
    :cond_0
    const/16 v0, 0x140

    goto :goto_0
.end method

.method public getTextHeight()I
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    :goto_0
    return v0

    .line 65
    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "HVGA-L"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "HVGA-P"

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e0

    :goto_0
    return v0

    .line 50
    :cond_0
    const/16 v0, 0x140

    goto :goto_0
.end method
