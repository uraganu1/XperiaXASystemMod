.class public abstract Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;
.source "IndexableListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;
    }
.end annotation


# instance fields
.field private mIndexedPartition:I

.field private mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

.field private mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z

.field private mSectionIndexer:Landroid/widget/SectionIndexer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    .line 63
    return-void
.end method


# virtual methods
.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 95
    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v2, "key_contacts_indexer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string/jumbo v2, "key_contacts_indexer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 97
    .local v1, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->setIndexer(Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V

    .line 100
    .end local v1    # "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 93
    return-void

    .line 94
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    return-object v0
.end method

.method public getItemPlacementInSection(I)Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->-get0(Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    return-object v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->-set0(Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;I)I

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 149
    .local v0, "section":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->firstInSection:Z

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 161
    .end local v0    # "section":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    return-object v1

    .line 153
    .restart local v0    # "section":I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    iput-boolean v2, v1, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->firstInSection:Z

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_0

    .line 158
    .end local v0    # "section":I
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    iput-boolean v2, v1, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->firstInSection:Z

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    iput-object v3, v1, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, -0x1

    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, -0x1

    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, " "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .locals 0
    .param p1, "partition"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mIndexedPartition:I

    .line 79
    return-void
.end method

.method public setIndexer(Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V
    .locals 0
    .param p1, "indexer"    # Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 107
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 71
    return-void
.end method

.method public setSectionIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->mPlacementCache:Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->invalidate()V

    .line 87
    return-void
.end method
