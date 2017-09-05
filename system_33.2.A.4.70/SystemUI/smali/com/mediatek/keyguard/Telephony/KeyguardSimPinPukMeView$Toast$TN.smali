.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$1;,
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$2;
    }
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManagerImpl;

.field final synthetic this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;)V
    .locals 3
    .param p1, "this$1"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    .prologue
    const/4 v2, -0x2

    .line 1210
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 1194
    new-instance v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$1;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$1;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 1200
    new-instance v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$2;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN$2;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 1206
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 1211
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 1212
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1213
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1214
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1217
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1218
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1219
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1220
    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1210
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1276
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v0, v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1280
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v0, v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v1, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iput-object v2, v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    .line 1272
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1248
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v1, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    .line 1249
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget v0, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mGravity:I

    .line 1250
    .local v0, "gravity":I
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1251
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 1254
    :cond_0
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 1257
    :cond_1
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget v2, v2, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1258
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v1, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1259
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v1, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1263
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v2, v2, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1268
    :cond_2
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v2, v2, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    :cond_3
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v0, v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1236
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    iget-object v0, v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1226
    return-void
.end method
