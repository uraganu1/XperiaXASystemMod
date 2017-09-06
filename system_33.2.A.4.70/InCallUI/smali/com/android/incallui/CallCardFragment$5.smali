.class Lcom/android/incallui/CallCardFragment$5;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 567
    if-eqz p2, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->-get6(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :cond_0
    return-void
.end method
