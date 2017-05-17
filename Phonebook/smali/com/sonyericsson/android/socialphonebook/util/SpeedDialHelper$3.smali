.class Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;
.super Ljava/lang/Object;
.source "SpeedDialHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->asyncUpdateEntryPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

.field final synthetic val$newPosition:I

.field final synthetic val$oldPosition:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;
    .param p2, "val$oldPosition"    # I
    .param p3, "val$newPosition"    # I

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;->val$oldPosition:I

    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;->val$newPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;->val$oldPosition:I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;->val$newPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->updateEntryPosition(II)I

    .line 149
    return-void
.end method
