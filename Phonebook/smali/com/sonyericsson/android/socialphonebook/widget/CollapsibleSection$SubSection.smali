.class Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;
.super Ljava/lang/Object;
.source "CollapsibleSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubSection"
.end annotation


# static fields
.field static final COLLAPSIBLE:I = 0x1

.field static final DISP_TAIL_CHAR:I = 0x4

.field static final INITIAL_OPEN:I = 0x2


# instance fields
.field public collapsed:Z

.field public end:I

.field public start:I

.field public type:I


# direct methods
.method constructor <init>(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->start:I

    .line 397
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    .line 398
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->type:I

    .line 399
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    .line 395
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->collapsed:Z

    goto :goto_0
.end method


# virtual methods
.method public size()I
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->end:I

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/CollapsibleSection$SubSection;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
