.class Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader$1;
.super Ljava/lang/Object;
.source "GalleryMediaStoreLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->loadInBackground()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader$1;->this$0:Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;)I
    .locals 4
    .param p1, "msd1"    # Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
    .param p2, "msd2"    # Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    .prologue
    .line 86
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->getmDateTaken()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;->getmDateTaken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "msd1"    # Ljava/lang/Object;
    .param p2, "msd2"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    .end local p1    # "msd1":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    .end local p2    # "msd2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader$1;->compare(Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;)I

    move-result v0

    return v0
.end method
