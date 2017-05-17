.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsModel"
.end annotation


# instance fields
.field private mContactIdsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/movablepanes/data/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    .line 623
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    .line 629
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 631
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "favorites_order"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "order":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 633
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "favOrderArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_1

    .line 637
    :try_start_0
    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 638
    .local v0, "contactId":J
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 639
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0    # "contactId":J
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    .end local v3    # "favOrderArray":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_1
    return-void

    .line 641
    .restart local v3    # "favOrderArray":[Ljava/lang/String;
    .restart local v4    # "i":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private changeOrder(II)V
    .locals 4
    .param p1, "source"    # I
    .param p2, "destination"    # I

    .prologue
    .line 680
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 681
    .local v0, "sourceContactId":J
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 682
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 679
    return-void
.end method

.method private findContact(J)Lcom/sonyericsson/movablepanes/data/ContactInfo;
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 756
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 757
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/movablepanes/data/ContactInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactId()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/movablepanes/data/ContactInfo;

    return-object v1

    .line 756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 772
    return-void
.end method

.method public get(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 751
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 752
    .local v0, "contactId":J
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->findContact(J)Lcom/sonyericsson/movablepanes/data/ContactInfo;

    move-result-object v2

    return-object v2
.end method

.method public getContactLocation(J)I
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public moveContactToLocation(JI)Z
    .locals 5
    .param p1, "contactId"    # J
    .param p3, "newLocation"    # I

    .prologue
    const/4 v3, 0x1

    .line 662
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 664
    .local v0, "current":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 666
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 667
    return v3

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 671
    if-eq v0, p3, :cond_1

    .line 672
    invoke-direct {p0, v0, p3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->changeOrder(II)V

    .line 673
    return v3

    .line 676
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public saveOrder()V
    .locals 4

    .prologue
    .line 654
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "order":Ljava/lang/String;
    const-string/jumbo v2, "\\[|\\]| "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "favorites_order"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 653
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public update(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x1

    .line 692
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->clear()V

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_3

    .line 700
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 701
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 702
    .local v2, "contactId":J
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x2

    .line 703
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 706
    .local v5, "photoUri":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v12, :cond_2

    const/4 v10, 0x1

    .line 709
    .local v10, "isInVisibleGroup":Z
    :goto_1
    const/4 v1, 0x4

    .line 708
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, "contactStatusResPkg":Ljava/lang/String;
    const/4 v1, 0x5

    .line 710
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 713
    .local v7, "contactPresence":I
    if-eqz v10, :cond_0

    .line 714
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_1
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    new-instance v1, Lcom/sonyericsson/movablepanes/data/ContactInfo;

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/movablepanes/data/ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 706
    .end local v6    # "contactStatusResPkg":Ljava/lang/String;
    .end local v7    # "contactPresence":I
    .end local v10    # "isInVisibleGroup":Z
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "isInVisibleGroup":Z
    goto :goto_1

    .line 734
    .end local v2    # "contactId":J
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "photoUri":Ljava/lang/String;
    .end local v10    # "isInVisibleGroup":Z
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mModel:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eq v1, v11, :cond_5

    .line 735
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->mContactIdsOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 736
    .local v8, "contactIdsOrderIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 737
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 738
    .local v9, "current":Ljava/lang/Long;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 739
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 691
    .end local v8    # "contactIdsOrderIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v9    # "current":Ljava/lang/Long;
    :cond_5
    return-void
.end method
