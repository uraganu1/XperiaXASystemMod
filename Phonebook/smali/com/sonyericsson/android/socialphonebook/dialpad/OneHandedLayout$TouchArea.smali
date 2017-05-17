.class Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
.super Ljava/lang/Object;
.source "OneHandedLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchArea"
.end annotation


# instance fields
.field private mIndicator:Landroid/view/View;

.field private final mIndicatorId:I

.field private mTouchArea:Landroid/view/View;

.field private final mTouchAreaId:I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;
    .param p2, "touchAreaId"    # I
    .param p3, "indicatorId"    # I

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mTouchAreaId:I

    .line 134
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mIndicatorId:I

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;IILcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;
    .param p2, "touchAreaId"    # I
    .param p3, "indicatorId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;II)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 138
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mTouchAreaId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mTouchArea:Landroid/view/View;

    .line 139
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mIndicatorId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mIndicator:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mTouchArea:Landroid/view/View;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea$1;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mTouchArea:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    if-nez p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 149
    :cond_0
    return-void

    .line 150
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->mIndicator:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :cond_0
    return-void
.end method
