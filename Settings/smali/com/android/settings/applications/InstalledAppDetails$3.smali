.class Lcom/android/settings/applications/InstalledAppDetails$3;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult([I[Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "counts"    # [I
    .param p2, "groupLabels"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1017
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1018
    return-void

    .line 1020
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->-set1(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 1021
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1022
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1023
    .local v4, "summary":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1024
    .local v1, "enabled":Z
    if-eqz p1, :cond_1

    .line 1025
    aget v5, p1, v9

    .line 1026
    .local v5, "totalCount":I
    const/4 v6, 0x2

    aget v0, p1, v6

    .line 1028
    .local v0, "additionalCounts":I
    if-nez v5, :cond_2

    .line 1030
    const v6, 0x7f0b0b23

    .line 1029
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1049
    .end local v0    # "additionalCounts":I
    .end local v4    # "summary":Ljava/lang/CharSequence;
    .end local v5    # "totalCount":I
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v6}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v6}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1016
    return-void

    .line 1032
    .restart local v0    # "additionalCounts":I
    .restart local v4    # "summary":Ljava/lang/CharSequence;
    .restart local v5    # "totalCount":I
    :cond_2
    const/4 v1, 0x1

    .line 1034
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1035
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez v0, :cond_3

    .line 1037
    new-array v6, v9, [Ljava/lang/Object;

    .line 1039
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1038
    const v7, 0x7f11000e

    .line 1037
    invoke-virtual {v3, v7, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 1043
    const v6, 0x7f0b0b22

    .line 1042
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "summary":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1045
    .local v4, "summary":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    .local v4, "summary":Ljava/lang/CharSequence;
    goto :goto_0
.end method
