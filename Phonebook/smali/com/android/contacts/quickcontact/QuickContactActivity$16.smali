.class Lcom/android/contacts/quickcontact/QuickContactActivity$16;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->analyzeWhitenessOfPhotoAsynchronously()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$imageViewDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p2, "val$imageViewDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 2002
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 2004
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 2005
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 2006
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2007
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/WhitenessUtils;->isBitmapWhiteAtTopOrBottom(Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 2009
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2001
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isWhite"    # Ljava/lang/Boolean;

    .prologue
    .line 2014
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2015
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setUseGradient(Z)V

    .line 2013
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "isWhite"    # Ljava/lang/Object;

    .prologue
    .line 2013
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "isWhite":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
