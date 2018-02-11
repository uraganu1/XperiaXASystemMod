.class public final Lcom/android/settings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v11, 0x7f0200ad

    const v10, 0x7f0200a8

    const v9, 0x7f0200d5

    const v8, 0x7f0200c6

    const v7, 0x7f0200af

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    sput-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 80
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 82
    const-class v3, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 83
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 84
    const-class v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 89
    const-class v3, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 91
    const-class v4, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 90
    const v5, 0x7f080085

    .line 88
    invoke-direct {v2, v3, v5, v4, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 96
    const-class v3, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 98
    const-class v4, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 97
    const v5, 0x7f080087

    .line 95
    invoke-direct {v2, v3, v5, v4, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 103
    const-class v3, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 104
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 105
    const-class v5, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 106
    const v6, 0x7f0200b0

    .line 102
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 110
    const-class v3, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 111
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 112
    const-class v5, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 113
    const v6, 0x7f0200d7

    .line 109
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 117
    const-class v3, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 118
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 119
    const-class v5, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 120
    const v6, 0x7f0200b6

    .line 116
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 124
    const-class v3, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 125
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 126
    const-class v5, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 127
    const v6, 0x7f0200b6

    .line 123
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 131
    const-class v3, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 132
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 133
    const-class v5, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 134
    const v6, 0x7f0200c3

    .line 130
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 138
    const-class v3, Lcom/android/settings/HomeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 139
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 140
    const-class v5, Lcom/android/settings/HomeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 141
    const v6, 0x7f0200bd

    .line 137
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 145
    const-class v3, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 146
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 147
    const-class v5, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 148
    const v6, 0x7f0200b9

    .line 144
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 152
    const-class v3, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 153
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 154
    const-class v5, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 155
    const v6, 0x7f0200d4

    .line 151
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AUDIO_PROFILES:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 161
    const-class v3, Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 162
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 163
    const-class v5, Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/audioprofile/SoundEnhancement;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 169
    const-class v3, Lcom/mediatek/audioprofile/SoundEnhancement;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 170
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 171
    const-class v5, Lcom/mediatek/audioprofile/SoundEnhancement;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :goto_0
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 192
    const-class v3, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 193
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 194
    const-class v5, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 199
    const-class v3, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 201
    const-class v4, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 200
    const v5, 0x7f080090

    .line 198
    invoke-direct {v2, v3, v5, v4, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 206
    const-class v3, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 207
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 208
    const-class v5, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 209
    const v6, 0x7f0200d0

    .line 205
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 204
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 213
    const-class v3, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 215
    const-class v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 214
    const v5, 0x7f08003e

    .line 212
    invoke-direct {v2, v3, v5, v4, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 220
    const-class v3, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 222
    const-class v4, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 221
    const v5, 0x7f080006

    .line 219
    invoke-direct {v2, v3, v5, v4, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 226
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 227
    const-class v3, Lcom/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 228
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 229
    const-class v5, Lcom/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-direct {v2, v3, v4, v5, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 233
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 234
    const-class v3, Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 235
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 236
    const-class v5, Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 241
    const-class v3, Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 242
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 243
    const-class v5, Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/sonymobile/settings/stamina/HowToUseStaminaFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 248
    const-class v3, Lcom/sonymobile/settings/stamina/HowToUseStaminaFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 249
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 250
    const-class v5, Lcom/sonymobile/settings/stamina/HowToUseStaminaFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 254
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 255
    const-class v3, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 256
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 257
    const-class v5, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 262
    const-class v3, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 263
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 264
    const-class v5, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 269
    const-class v3, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 270
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 271
    const-class v5, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 272
    const v6, 0x7f0200c4

    .line 268
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 275
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 276
    const-class v3, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 278
    const-class v4, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 277
    const v5, 0x7f080035

    .line 279
    const v6, 0x7f0200c1

    .line 275
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 283
    const-class v3, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 285
    const-class v4, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 284
    const v5, 0x7f080034

    .line 286
    const v6, 0x7f0200c1

    .line 282
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 281
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 290
    const-class v3, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 291
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 292
    const-class v5, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 293
    const v6, 0x7f0200cc

    .line 289
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 296
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 297
    const-class v3, Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 298
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 299
    const-class v5, Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 300
    const v6, 0x7f0200cc

    .line 296
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 304
    const-class v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 305
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 306
    const-class v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 307
    const v6, 0x7f0200c0

    .line 303
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 302
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 311
    const-class v3, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 312
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 313
    const-class v5, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 314
    const v6, 0x7f0200ae

    .line 310
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 309
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 317
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 318
    const-class v3, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 320
    const-class v4, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 319
    const v5, 0x7f08001c

    .line 321
    const v6, 0x7f0200b7

    .line 317
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 316
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 325
    const-class v3, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 326
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 327
    const-class v5, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 328
    const v6, 0x7f0200a9

    .line 324
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 323
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 332
    const-class v3, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 333
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 334
    const-class v5, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 335
    const v6, 0x7f0200b5

    .line 331
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 330
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 339
    const-class v3, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 340
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 341
    const-class v5, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 342
    const v6, 0x7f0200b8

    .line 338
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 337
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 345
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 346
    const-class v3, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 347
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 348
    const-class v5, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 344
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 353
    const-class v3, Lcom/android/settings/LegalSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 354
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 355
    const-class v5, Lcom/android/settings/LegalSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 351
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 359
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 360
    const-class v3, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 362
    const-class v4, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 361
    const v5, 0x7f080086

    .line 359
    invoke-direct {v2, v3, v5, v4, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 358
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/search/SearchExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 368
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 369
    const-class v3, Lcom/mediatek/search/SearchExt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 370
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 371
    const-class v5, Lcom/mediatek/search/SearchExt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 372
    const/high16 v6, 0x7f030000

    .line 368
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 367
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/settings/hotknot/HotKnotSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 376
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 377
    const-class v3, Lcom/mediatek/settings/hotknot/HotKnotSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 378
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 379
    const-class v5, Lcom/mediatek/settings/hotknot/HotKnotSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 380
    const v6, 0x7f0200be

    .line 376
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 375
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/sonymobile/settings/GenericSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 396
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 397
    const-class v3, Lcom/sonymobile/settings/GenericSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 398
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 399
    const-class v5, Lcom/sonymobile/settings/GenericSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 395
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void

    .line 175
    :cond_0
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 176
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 177
    const-class v3, Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 178
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 179
    const-class v5, Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 184
    const-class v3, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 185
    sget v4, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 186
    const-class v5, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 182
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 411
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    sget-object v0, Lcom/android/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
