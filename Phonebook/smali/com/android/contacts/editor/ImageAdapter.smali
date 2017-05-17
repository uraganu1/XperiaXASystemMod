.class Lcom/android/contacts/editor/ImageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ImageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/model/ValuesDelta;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p2, "photoValuesDeltaList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 368
    iput-object p1, p0, Lcom/android/contacts/editor/ImageAdapter;->mContext:Landroid/content/Context;

    .line 369
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 366
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 376
    if-nez p2, :cond_1

    .line 377
    iget-object v4, p0, Lcom/android/contacts/editor/ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400cd

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 378
    new-instance v3, Lcom/android/contacts/editor/ImageAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/android/contacts/editor/ImageAdapter$ViewHolder;-><init>()V

    .line 379
    .local v3, "viewHolder":Lcom/android/contacts/editor/ImageAdapter$ViewHolder;
    const v4, 0x7f0e020b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/contacts/editor/ImageAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 380
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 384
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v5, "data15"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 385
    .local v2, "photoBytes":[B
    if-eqz v2, :cond_0

    .line 386
    iget-object v4, p0, Lcom/android/contacts/editor/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getBitmapOptions(Landroid/content/Context;[B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 387
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 389
    .local v1, "photo":Landroid/graphics/Bitmap;
    iget-object v4, v3, Lcom/android/contacts/editor/ImageAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    return-object p2

    .line 382
    .end local v2    # "photoBytes":[B
    .end local v3    # "viewHolder":Lcom/android/contacts/editor/ImageAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/ImageAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/android/contacts/editor/ImageAdapter$ViewHolder;
    goto :goto_0
.end method
