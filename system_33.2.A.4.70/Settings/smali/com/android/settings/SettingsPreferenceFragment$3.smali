.class Lcom/android/settings/SettingsPreferenceFragment$3;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/widget/ListView;Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p2, "val$listView"    # Landroid/widget/ListView;
    .param p3, "val$adapter"    # Landroid/widget/ListAdapter;
    .param p4, "val$position"    # I
    .param p5, "val$highlight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$adapter:Landroid/widget/ListAdapter;

    iput p4, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$position:I

    iput-object p5, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$3$1;

    iget v2, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$position:I

    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/SettingsPreferenceFragment$3;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/SettingsPreferenceFragment$3$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment$3;ILandroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V

    .line 285
    const-wide/16 v2, 0x258

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method
