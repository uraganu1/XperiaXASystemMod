.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;
.super Landroid/app/Dialog;
.source "WfdSinkSurfaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenDialog"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSystemUiBak:I

.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    return v0
.end method

.method public constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/app/Activity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .line 244
    const v0, 0x1030011

    .line 243
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 245
    iput-object p2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    .line 242
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dialog dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 315
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 311
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dialog onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get3(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap3(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 323
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 326
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 319
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 250
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@M_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dialog onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 255
    .local v0, "viewParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    new-instance v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget-object v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-set1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .line 256
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setFocusableInTouchMode(Z)V

    .line 257
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    new-instance v2, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-set0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 259
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get5(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 260
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get5(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get5(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dialog onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 268
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    .line 269
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$1;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)V

    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-wrap3(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Ljava/lang/Runnable;)V

    .line 277
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog$2;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;)V

    .line 277
    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    invoke-static {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap4(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 295
    const/16 v1, 0x80

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 296
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get5(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 265
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dialog onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mSystemUiBak:I

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setSystemUiVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 304
    const/16 v1, 0x80

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 305
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get5(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 306
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->restoreOrientation()V

    .line 307
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 300
    return-void
.end method
