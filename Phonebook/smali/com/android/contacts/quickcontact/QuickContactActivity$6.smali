.class final Lcom/android/contacts/quickcontact/QuickContactActivity$6;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
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
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataItem;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2, "rhs"    # Lcom/android/contacts/common/model/dataitem/DataItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 672
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Comparing DataItems with different mimetypes lhs.getMimeType(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 674
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 674
    const-string/jumbo v4, " rhs.getMimeType(): "

    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 674
    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v2, 0x0

    return v2

    .line 678
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    return v4

    .line 680
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    return v5

    .line 682
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 684
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 685
    return v5

    .line 683
    :cond_4
    return v4

    .line 688
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v0, 0x0

    .line 690
    .local v0, "lhsTimesUsed":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v1, 0x0

    .line 692
    .local v1, "rhsTimesUsed":I
    :goto_1
    sub-int v2, v1, v0

    return v2

    .line 688
    .end local v0    # "lhsTimesUsed":I
    .end local v1    # "rhsTimesUsed":I
    :cond_6
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "lhsTimesUsed":I
    goto :goto_0

    .line 690
    :cond_7
    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "rhsTimesUsed":I
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 671
    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/contacts/common/model/dataitem/DataItem;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;->compare(Lcom/android/contacts/common/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataItem;)I

    move-result v0

    return v0
.end method
