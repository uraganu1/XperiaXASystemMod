.class public Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationListFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/notifications/NotificationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/notifications/NotificationListFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-object p1, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    .line 150
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 151
    return-void
.end method

.method private getSubtitle(Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;)Ljava/lang/String;
    .locals 5
    .param p1, "row"    # Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    .prologue
    .line 238
    iget-boolean v2, p1, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->banned:Z

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v2, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const v3, 0x7f04001a

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    iget-boolean v2, p1, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->priority:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->sensitive:Z

    if-nez v2, :cond_2

    .line 242
    const-string v0, ""

    goto :goto_0

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v2, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const v3, 0x7f04001b

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "priString":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v2, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const v3, 0x7f04001c

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "senString":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->priority:Z

    iget-boolean v3, p1, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->sensitive:Z

    if-eq v2, v3, :cond_3

    .line 247
    iget-boolean v2, p1, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->priority:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 249
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v3, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const v4, 0x7f040019

    invoke-virtual {v3, v4}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 210
    instance-of v4, p2, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    if-nez v4, :cond_0

    .line 212
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 213
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;->section:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v2    # "tv":Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 217
    check-cast v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    .line 218
    .local v0, "row":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;

    .line 219
    .local v3, "vh":Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;
    iget-object v7, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v4, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->first:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v4, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v7, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;-><init>(Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;)V

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v4, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v4, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->getSubtitle(Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "sub":Ljava/lang/String;
    iget-object v4, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v4, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "sub":Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 219
    goto :goto_1

    .restart local v1    # "sub":Ljava/lang/String;
    :cond_2
    move v6, v5

    .line 234
    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    .line 171
    .local v0, "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    instance-of v1, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "sectionIndex"    # I

    .prologue
    .line 259
    iget-object v4, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v4, v4, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    .local v3, "section":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->getCount()I

    move-result v1

    .line 261
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    .line 263
    .local v2, "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    iget-object v4, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;->section:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    .end local v0    # "i":I
    .end local v2    # "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    :goto_1
    return v0

    .line 261
    .restart local v0    # "i":I
    .restart local v2    # "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v2    # "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    .line 273
    .local v0, "row":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    iget-object v1, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v1, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mSections:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v0, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    iget-object v1, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    .line 185
    .local v0, "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    if-nez p2, :cond_0

    .line 186
    invoke-virtual {p0, p3, v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;)V

    .line 191
    return-object v1

    .line 188
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    .line 178
    .local v1, "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    instance-of v0, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    .line 179
    .local v0, "enabled":Z
    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    .prologue
    const/4 v4, 0x0

    .line 195
    instance-of v2, p2, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    # getter for: Lcom/sonymobile/settings/notifications/NotificationListFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->access$100(Lcom/sonymobile/settings/notifications/NotificationListFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    # getter for: Lcom/sonymobile/settings/notifications/NotificationListFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->access$100(Lcom/sonymobile/settings/notifications/NotificationListFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;

    invoke-direct {v1}, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;-><init>()V

    .local v1, "vh":Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;
    move-object v2, v0

    .line 200
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 201
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 202
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 203
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 204
    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->rowDivider:Landroid/view/View;

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
