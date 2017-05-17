.class Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinQueryHandler;
.super Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;
.source "JoinContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoinQueryHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)V
    .locals 0
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    .line 595
    return-void
.end method


# virtual methods
.method protected final onPostQuery(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    .locals 7
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    if-eqz p4, :cond_0

    .line 617
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;

    .end local v1    # "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    invoke-direct {v1, p4, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    .line 618
    .local v1, "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->filterCursor()V

    .line 620
    .end local v1    # "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    :cond_0
    move-object v0, v1

    .line 621
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v4, 0x53

    if-ne p2, v4, :cond_4

    move-object v3, p3

    .line 622
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    .line 623
    .local v3, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    if-eqz v0, :cond_3

    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    if-eqz v4, :cond_3

    .line 624
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->-wrap0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)I

    move-result v2

    .line 625
    .local v2, "offset":I
    if-lez v2, :cond_1

    .line 626
    add-int/lit8 v2, v2, 0x2

    :cond_1
    move-object v4, p1

    .line 628
    check-cast v4, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setGoneAlphabetBar(Z)V

    .line 629
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    invoke-interface {v4, v0, v2}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;->getIndexedCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;

    move-result-object v0

    .line 642
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "offset":I
    .end local v3    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v4, p3, v0}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    :goto_1
    return-object v4

    .line 630
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_3
    if-eqz v0, :cond_2

    .line 631
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 632
    const/4 v0, 0x0

    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 635
    .end local v3    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    if-eqz v4, :cond_5

    .line 636
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    invoke-interface {v4, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;->getSortedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 637
    :cond_5
    if-eqz v0, :cond_2

    .line 638
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 639
    const/4 v0, 0x0

    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_6
    move-object v4, v5

    .line 642
    goto :goto_1
.end method

.method protected final onQueryComplete(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v10, 0x54

    const/16 v1, 0x53

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 657
    const/4 v2, 0x0

    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    move-object v8, p1

    .line 658
    check-cast v8, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    .line 660
    .local v8, "activity":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
    if-ne p2, v1, :cond_2

    .line 661
    invoke-static {v8, v3}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Z)Z

    move-object v2, p3

    .line 664
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    .line 665
    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    invoke-static {v2, p4}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->-set0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 667
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 670
    :cond_0
    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 656
    .end local v2    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_1
    :goto_0
    return-void

    .line 671
    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_2
    if-ne p2, v10, :cond_4

    .line 673
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 674
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    .end local v2    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    invoke-direct {v2, p4, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V

    .line 680
    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :goto_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 681
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Ljava/lang/String;

    move-result-object v5

    .line 682
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 680
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_3
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 677
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    .end local v2    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    invoke-direct {v2, v6, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V

    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    goto :goto_1

    .line 683
    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    :cond_4
    if-eqz p4, :cond_1

    .line 687
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    .end local v2    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    invoke-direct {v2, v6, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V

    .line 688
    .local v2, "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 692
    const-string/jumbo v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string/jumbo v0, "_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string/jumbo v0, " IN("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 696
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :goto_2
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    const-string/jumbo v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 701
    :cond_5
    const-string/jumbo v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 705
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 706
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 709
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 708
    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, v10

    .line 703
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 712
    :cond_6
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 713
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    .end local v2    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    invoke-direct {v2, v6, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V

    .line 714
    .restart local v2    # "result":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 715
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Ljava/lang/String;

    move-result-object v5

    .line 716
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 714
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
