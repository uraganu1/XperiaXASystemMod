.class Lcom/sonyericsson/conversations/ui/audio/SoundLevels$1;
.super Ljava/lang/Object;
.source "SoundLevels.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/audio/SoundLevels;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/audio/SoundLevels;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->invalidate()V

    .line 111
    return-void
.end method
