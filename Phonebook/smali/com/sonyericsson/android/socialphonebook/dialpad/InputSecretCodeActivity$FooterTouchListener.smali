.class Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;
.super Ljava/lang/Object;
.source "InputSecretCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FooterTouchListener"
.end annotation


# static fields
.field private static final MIN_PRESSED_DOWN_TIME:J = 0xbb8L


# instance fields
.field private mPressedDown:Z

.field private mShowButton:Z

.field private mStartTime:J


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mShowButton:Z

    return p1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mShowButton:Z

    if-eqz v1, :cond_0

    .line 72
    return v6

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 109
    :pswitch_0
    return v6

    .line 76
    :pswitch_1
    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mPressedDown:Z

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mStartTime:J

    .line 111
    :cond_1
    :goto_0
    return v7

    .line 80
    :pswitch_2
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mPressedDown:Z

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mStartTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 85
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mPressedDown:Z

    goto :goto_0

    .line 86
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mPressedDown:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 89
    const v1, 0x7f0e01b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mShowButton:Z

    .line 95
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener$1;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity$FooterTouchListener;->mPressedDown:Z

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
