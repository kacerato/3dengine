.class public LS0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LT0/a;
.end annotation

.annotation build LX0/F;
.end annotation


# static fields
.field public static final a:LS0/A;

.field public static final b:LS0/A;

.field public static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LS0/b0;

    invoke-direct {v0}, LS0/b0;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, LS0/b0;->d(Ljava/lang/String;)LS0/b0;

    const-wide/32 v1, 0xc2bd840

    invoke-virtual {v0, v1, v2}, LS0/b0;->a(J)LS0/b0;

    sget-object v1, LS0/P;->d:LS0/N;

    invoke-virtual {v1}, LS0/N;->f1()[B

    move-result-object v2

    sget-object v3, LS0/P;->b:LS0/N;

    invoke-virtual {v3}, LS0/N;->f1()[B

    move-result-object v3

    invoke-static {v2, v3}, Ly1/k;->p(Ljava/lang/Object;Ljava/lang/Object;)Ly1/k;

    move-result-object v2

    invoke-virtual {v0, v2}, LS0/b0;->c(Ljava/util/List;)LS0/b0;

    sget-object v2, LS0/P;->c:LS0/N;

    invoke-virtual {v2}, LS0/N;->f1()[B

    move-result-object v3

    sget-object v4, LS0/P;->a:LS0/N;

    invoke-virtual {v4}, LS0/N;->f1()[B

    move-result-object v4

    invoke-static {v3, v4}, Ly1/k;->p(Ljava/lang/Object;Ljava/lang/Object;)Ly1/k;

    move-result-object v3

    invoke-virtual {v0, v3}, LS0/b0;->b(Ljava/util/List;)LS0/b0;

    invoke-virtual {v0}, LS0/b0;->e()LS0/A;

    move-result-object v0

    sput-object v0, LS0/g;->a:LS0/A;

    new-instance v0, LS0/b0;

    invoke-direct {v0}, LS0/b0;-><init>()V

    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3}, LS0/b0;->d(Ljava/lang/String;)LS0/b0;

    const-wide/32 v3, 0x4e6e200

    invoke-virtual {v0, v3, v4}, LS0/b0;->a(J)LS0/b0;

    invoke-virtual {v1}, LS0/N;->f1()[B

    move-result-object v1

    invoke-static {v1}, Ly1/k;->o(Ljava/lang/Object;)Ly1/k;

    move-result-object v1

    invoke-virtual {v0, v1}, LS0/b0;->c(Ljava/util/List;)LS0/b0;

    invoke-virtual {v2}, LS0/N;->f1()[B

    move-result-object v1

    invoke-static {v1}, Ly1/k;->o(Ljava/lang/Object;)Ly1/k;

    move-result-object v1

    invoke-virtual {v0, v1}, LS0/b0;->b(Ljava/util/List;)LS0/b0;

    invoke-virtual {v0}, LS0/b0;->e()LS0/A;

    move-result-object v0

    sput-object v0, LS0/g;->b:LS0/A;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LS0/g;->c:Ljava/util/HashMap;

    return-void
.end method
