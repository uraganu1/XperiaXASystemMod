.class final Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;
.super Ljava/lang/Object;
.source "PackageDisplayList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->sort(Ljava/util/ArrayList;)V
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
        "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;)I
    .locals 2
    .param p1, "ui1"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .param p2, "ui2"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .prologue
    .line 178
    invoke-static {}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-get1()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-get1()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    :cond_0
    invoke-static {}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-get1()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->-get1()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 185
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 180
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 187
    :cond_4
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 188
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 190
    :cond_5
    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 191
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 193
    :cond_6
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 194
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_7
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "ui1"    # Ljava/lang/Object;
    .param p2, "ui2"    # Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .end local p1    # "ui1":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .end local p2    # "ui2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;->compare(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;)I

    move-result v0

    return v0
.end method
