.class public final Lu0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/d$a;
    }
.end annotation


# static fields
.field public static final c:Lu0/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/d$a;

    invoke-direct {v0}, Lu0/d$a;-><init>()V

    invoke-virtual {v0}, Lu0/d$a;->b()Lu0/d;

    move-result-object v0

    sput-object v0, Lu0/d;->c:Lu0/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lu0/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lu0/d;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lu0/d;
    .locals 1

    sget-object v0, Lu0/d;->c:Lu0/d;

    return-object v0
.end method

.method public static d()Lu0/d$a;
    .locals 1

    new-instance v0, Lu0/d$a;

    invoke-direct {v0}, Lu0/d$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu0/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lt3/a$a;
        name = "logEventDropped"
    .end annotation

    .annotation build Lw3/d;
        tag = 0x2
    .end annotation

    iget-object v0, p0, Lu0/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lw3/d;
        tag = 0x1
    .end annotation

    iget-object v0, p0, Lu0/d;->a:Ljava/lang/String;

    return-object v0
.end method
