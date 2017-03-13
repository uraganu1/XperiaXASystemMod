.class public Lcom/android/systemui/tuner/QsTuner;
.super Landroid/app/Fragment;
.source "QsTuner.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/QsTuner$CustomHost;,
        Lcom/android/systemui/tuner/QsTuner$DraggableTile;,
        Lcom/android/systemui/tuner/QsTuner$DragHelper;,
        Lcom/android/systemui/tuner/QsTuner$DropListener;,
        Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;
    }
.end annotation


# instance fields
.field private mAddTarget:Landroid/widget/FrameLayout;

.field private mDropTarget:Landroid/widget/FrameLayout;

.field private mQsPanel:Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

.field private mScrollRoot:Landroid/widget/ScrollView;

.field private mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/QsTuner;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mAddTarget:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tuner/QsTuner;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mDropTarget:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/tuner/QsTuner;)Lcom/android/systemui/tuner/QsTuner$CustomHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)I
    .locals 1
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/tuner/QsTuner;->getLabelResource(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private static getLabelResource(Ljava/lang/String;)I
    .locals 3
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-static {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getTileLabel(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "id":I
    if-eqz v0, :cond_0

    return v0

    .line 199
    :cond_0
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090176

    return v1

    .line 200
    :cond_1
    const-string/jumbo v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f090162

    return v1

    .line 201
    :cond_2
    const-string/jumbo v1, "inversion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f090182

    return v1

    .line 202
    :cond_3
    const-string/jumbo v1, "cell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f09018c

    return v1

    .line 203
    :cond_4
    const-string/jumbo v1, "airplane"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0902d7

    return v1

    .line 204
    :cond_5
    const-string/jumbo v1, "dnd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f09015e

    return v1

    .line 205
    :cond_6
    const-string/jumbo v1, "rotation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f090168

    return v1

    .line 206
    :cond_7
    const-string/jumbo v1, "flashlight"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f09018b

    return v1

    .line 207
    :cond_8
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f09016c

    return v1

    .line 208
    :cond_9
    const-string/jumbo v1, "cast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f09017b

    return v1

    .line 209
    :cond_a
    const-string/jumbo v1, "hotspot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f090189

    return v1

    .line 211
    :cond_b
    const-string/jumbo v1, "audioprofile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f090053

    return v1

    .line 212
    :cond_c
    const-string/jumbo v1, "hotknot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f090058

    return v1

    .line 214
    :cond_d
    return v2
.end method

.method private setupAddTarget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 153
    new-instance v1, Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "tileView":Lcom/android/systemui/qs/QSTileView;
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    .line 155
    .local v0, "state":Lcom/android/systemui/qs/QSTile$State;
    iput-boolean v3, v0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 156
    const v2, 0x7f020026

    invoke-static {v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 157
    const v2, 0x7f090213

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/QsTuner;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 159
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner;->mAddTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 161
    new-instance v2, Lcom/android/systemui/tuner/QsTuner$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/tuner/QsTuner$2;-><init>(Lcom/android/systemui/tuner/QsTuner;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method private setupDropTarget()V
    .locals 4

    .prologue
    .line 136
    new-instance v1, Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "tileView":Lcom/android/systemui/qs/QSTileView;
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    .line 138
    .local v0, "state":Lcom/android/systemui/qs/QSTile$State;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 139
    const v2, 0x7f020036

    invoke-static {v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 140
    const v2, 0x104034c

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/QsTuner;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 142
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner;->mDropTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner;->mDropTarget:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    new-instance v2, Lcom/android/systemui/tuner/QsTuner$DragHelper;

    new-instance v3, Lcom/android/systemui/tuner/QsTuner$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/tuner/QsTuner$1;-><init>(Lcom/android/systemui/tuner/QsTuner;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/tuner/QsTuner$DragHelper;-><init>(Lcom/android/systemui/tuner/QsTuner;Landroid/view/View;Lcom/android/systemui/tuner/QsTuner$DropListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/QsTuner;->setHasOptionsMenu(Z)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x1

    const v1, 0x104044e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 112
    const v0, 0x7f04005d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mScrollRoot:Landroid/widget/ScrollView;

    .line 114
    new-instance v0, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;-><init>(Lcom/android/systemui/tuner/QsTuner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mQsPanel:Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

    .line 115
    new-instance v0, Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mQsPanel:Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->setTiles(Ljava/util/Collection;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mQsPanel:Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mQsPanel:Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->refreshAllTiles()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mScrollRoot:Landroid/widget/ScrollView;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner;->mQsPanel:Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mScrollRoot:Landroid/widget/ScrollView;

    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mDropTarget:Landroid/widget/FrameLayout;

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/tuner/QsTuner;->setupDropTarget()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mScrollRoot:Landroid/widget/ScrollView;

    const v1, 0x7f10019f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mAddTarget:Landroid/widget/FrameLayout;

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/tuner/QsTuner;->setupAddTarget()V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mScrollRoot:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->destroy()V

    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 106
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 100
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->reset()V

    goto :goto_0

    .line 103
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/tuner/QsTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 86
    return-void
.end method

.method public onStartDrag()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mDropTarget:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/tuner/QsTuner$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/QsTuner$3;-><init>(Lcom/android/systemui/tuner/QsTuner;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public onTilesChanged()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mQsPanel:Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner;->mTileHost:Lcom/android/systemui/tuner/QsTuner$CustomHost;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/QsTuner$DraggableQsPanel;->setTiles(Ljava/util/Collection;)V

    .line 190
    return-void
.end method

.method public stopDrag()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner;->mDropTarget:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/tuner/QsTuner$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/QsTuner$4;-><init>(Lcom/android/systemui/tuner/QsTuner;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method
