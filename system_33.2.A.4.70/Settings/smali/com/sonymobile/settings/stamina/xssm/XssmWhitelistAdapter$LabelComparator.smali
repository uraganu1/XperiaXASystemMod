.class Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;
.super Ljava/lang/Object;
.source "XssmWhitelistAdapter.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mWhitelist:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/WhiteList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V
    .locals 1
    .param p1, "whitelist"    # Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;->mWhitelist:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;)I
    .locals 3
    .param p1, "s"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .param p2, "t"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;->mWhitelist:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;->mWhitelist:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 291
    .local v0, "whitelist":Lcom/sonymobile/settings/stamina/xssm/WhiteList;
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getNotSelectableWhitelist()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    .end local v0    # "whitelist":Lcom/sonymobile/settings/stamina/xssm/WhiteList;
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 301
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 294
    .restart local v0    # "whitelist":Lcom/sonymobile/settings/stamina/xssm/WhiteList;
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 297
    :cond_3
    const/4 v1, -0x1

    return v1

    .line 303
    .end local v0    # "whitelist":Lcom/sonymobile/settings/stamina/xssm/WhiteList;
    :cond_4
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 304
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 305
    :cond_5
    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 306
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 307
    :cond_6
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_7

    .line 308
    const/4 v1, 0x0

    return v1

    .line 310
    :cond_7
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    .line 288
    check-cast p1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .end local p1    # "s":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .end local p2    # "t":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;->compare(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;)I

    move-result v0

    return v0
.end method
