.class Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhonesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneDisambigDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhonesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;>;"
    const v0, 0x109000a

    .line 168
    const v1, 0x1020014

    .line 167
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 166
    return-void
.end method
