.class public Lh9/f$P;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh9/f$P;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh9/f$P;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lh9/f$P;->c:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lh9/f$P;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lh9/f$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh9/f$P;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lh9/f$P;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lh9/f$P;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b(Lh9/f$P;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh9/f$P;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lh9/f$P;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh9/f$P;->a:Ljava/lang/String;

    return-object p0
.end method
