.class public final synthetic Ly0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a$a;


# instance fields
.field public final synthetic a:Ly0/s;

.field public final synthetic b:Lp0/r;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ly0/s;Lp0/r;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/i;->a:Ly0/s;

    iput-object p2, p0, Ly0/i;->b:Lp0/r;

    iput-wide p3, p0, Ly0/i;->c:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ly0/i;->a:Ly0/s;

    iget-object v1, p0, Ly0/i;->b:Lp0/r;

    iget-wide v2, p0, Ly0/i;->c:J

    invoke-static {v0, v1, v2, v3}, Ly0/s;->g(Ly0/s;Lp0/r;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
