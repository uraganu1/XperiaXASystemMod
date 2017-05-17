.class final Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$1;
.super Ljava/lang/Object;
.source "ContactsFilterActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)I
    .locals 2
    .param p1, "object1"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .param p2, "object2"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getViewId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getViewId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 681
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$1;->compare(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)I

    move-result v0

    return v0
.end method
