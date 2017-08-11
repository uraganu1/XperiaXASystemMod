.class public Lcom/android/incallui/Call$VideoSettings;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSettings"
.end annotation


# instance fields
.field private mCameraDirection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    .line 153
    return-void
.end method


# virtual methods
.method public getCameraDir()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    return v0
.end method

.method public setCameraDir(I)V
    .locals 1
    .param p1, "cameraDirection"    # I

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 172
    :cond_0
    iput p1, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    .line 169
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(CameraDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
