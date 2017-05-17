.class public Lcom/sonymobile/settings/notifications/NotificationListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "NotificationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;,
        Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;,
        Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;,
        Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;,
        Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field protected static final DEBUG:Z = false

.field private static final EMPTY_SUBTITLE:Ljava/lang/String; = ""

.field private static final EXTRA_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field private static final EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field private static final EXTRA_HAS_SETTINGS_INTENT:Ljava/lang/String; = "has_settings_intent"

.field private static final SECTION_AFTER_Z:Ljava/lang/String; = "**"

.field private static final SECTION_BEFORE_A:Ljava/lang/String; = "*"

.field protected static final TAG:Ljava/lang/String; = "NotificationListFragment"

.field protected static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

.field protected mBackend:Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;

.field protected mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field protected mLoadingContainer:Landroid/view/View;

.field protected final mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$1;

    invoke-direct {v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$1;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mRows:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mSections:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;-><init>(Lcom/sonymobile/settings/notifications/NotificationListFragment$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mBackend:Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;

    .line 318
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/notifications/NotificationListFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/notifications/NotificationListFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    .line 102
    :goto_0
    return-object v1

    .line 99
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 100
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    .line 101
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 302
    new-instance v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    invoke-direct {v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;-><init>()V

    .line 303
    .local v0, "row":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->pkg:Ljava/lang/String;

    .line 304
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->uid:I

    .line 306
    :try_start_0
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 312
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mBackend:Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;

    iget-object v3, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->pkg:Ljava/lang/String;

    iget v4, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->banned:Z

    .line 313
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mBackend:Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;

    iget-object v3, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->pkg:Ljava/lang/String;

    iget v4, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->priority:Z

    .line 314
    iget-object v2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mBackend:Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;

    iget-object v3, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->pkg:Ljava/lang/String;

    iget v4, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/settings/notifications/NotificationListFragment$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->sensitive:Z

    .line 315
    return-object v0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    iget-object v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/notifications/NotificationSettings;

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    .line 78
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    new-instance v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    iget-object v1, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mContext:Lcom/sonymobile/settings/notifications/NotificationSettings;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;-><init>(Lcom/sonymobile/settings/notifications/NotificationListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "v":Landroid/view/View;
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mLoadingContainer:Landroid/view/View;

    .line 87
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;

    iget-object v0, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->callOnClick()Z

    .line 95
    :cond_0
    return-void
.end method

.method protected refreshListSorted()V
    .locals 7

    .prologue
    .line 110
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mRows:Ljava/util/ArrayList;

    sget-object v6, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "section":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    .line 116
    .local v2, "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    iget-object v5, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->section:Ljava/lang/String;

    .line 117
    iget-object v5, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    iget-object v4, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->section:Ljava/lang/String;

    .line 119
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v2    # "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    invoke-virtual {v5}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->clear()V

    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v0, 0x1

    .line 126
    .local v0, "first":Z
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    .line 127
    .local v3, "row":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    iget-object v5, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    iget-object v4, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->section:Ljava/lang/String;

    .line 129
    new-instance v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;

    invoke-direct {v2}, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;-><init>()V

    .line 130
    .local v2, "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    iput-object v4, v2, Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;->section:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    invoke-virtual {v5, v2}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 132
    const/4 v0, 0x1

    .line 134
    .end local v2    # "r":Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;
    :cond_2
    iput-boolean v0, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->first:Z

    .line 135
    iget-object v5, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment;->mAdapter:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    invoke-virtual {v5, v3}, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 136
    const/4 v0, 0x0

    .line 137
    goto :goto_1

    .line 138
    .end local v3    # "row":Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;
    :cond_3
    return-void
.end method
